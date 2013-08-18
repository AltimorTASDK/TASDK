module ScriptHooks;

private import ScriptClasses;
private import std.c.stdlib;

alias extern(D) HookType function(void* obj, void* result, ubyte* args) HookFunction;
// TODO: This should be __stdcall
alias extern(Windows) void function(ScriptStackFrame* stack, void* result, ScriptFunction func) CleanupStack;
// TODO: These should both be __thiscall
alias extern(C++) void function(ScriptStackFrame* stack, void* result) NativeFunction;
alias extern(C++) void function(ScriptStackFrame* stack, void* result, ScriptFunction func) CallFunction;

public struct ScriptStackFrame
{
private:
	byte __padding__[0x10];

	ScriptStruct mNode;
	ScriptObject mObject;
	ubyte* mCode;
	ubyte* mLocals;

	ScriptStackFrame* mPreviousFrame;

public:
	@property
	{
		auto ref ScriptStruct Node() { return mNode; }
		auto ref ScriptObject ParentObject() { return mObject; }
		auto ref ubyte* Code() { return mCode; }
		auto ref ubyte* Locals() { return mLocals; }
		auto ref ScriptStackFrame* PreviousFrame() { return mPreviousFrame; }
	}
}

public enum HookType
{
	Continue,
	Block,
}

public struct HookInfo
{
private:
	HookFunction mFunctionHook;
	ScriptFunction mHookTarget;
	NativeFunction mOriginalFunction;
	int[] mArgumentSizes;
	int mStackSize;

public:
	@property
	{
		auto ref HookFunction FunctionHook() { return mFunctionHook; }
		auto ref ScriptFunction HookTarget() { return mHookTarget; }
		auto ref NativeFunction OriginalFunction() { return mOriginalFunction; }
		auto ref int[] ArgumentSizes() { return mArgumentSizes; }
		auto ref int StackSize() { return mStackSize; }
	}
}
version(D_InlineAsm_X86)
{
private:
	static __gshared HookInfo[] mHookArray;

	static __gshared NativeFunction* mNativeArray;
	static __gshared NativeFunction mOriginalVirtualFunction;
	static __gshared CleanupStack mCleanupStack;
	static __gshared CallFunction mCallFunction;

public:
	@property
	{
		final static auto ref NativeFunction* NativeArray() { return mNativeArray; }
		final static auto ref CleanupStack CleanupStackPtr() { return mCleanupStack; }
		final static auto ref CallFunction CallFunctionPtr() { return mCallFunction; }
	}
	static HookType CallHook(HookFunction func, ScriptObject obj, int paramSize, void* result, ubyte* funcArgs)
	{
		asm
		{
			naked;

			push EBP;
			mov EBP, ESP;
			push EDX;
			push ECX;

			mov ECX, funcArgs;
			add ECX, paramSize;

			mov EDX, funcArgs;
	pushLoop:
			push [EDX];
			add EDX, 4;

			cmp EDX, ECX;
			jl pushLoop;

			push result;
			push obj;

			call func;
			add ESP, 8;
			add ESP, paramSize;

			pop ECX;
			pop EDX;
			pop EBP;

			ret;
		}
	}

	static size_t* GetEBP()
	{
		asm
		{
			naked;
			mov EAX, EBP;
			ret;
		}
	}

	static void HookThunk()
	{
		asm
		{
			naked;
			push EDX;
			push ECX;
			jmp HookHandler;
		}
	}

	// TODO: This needs to be __fastcall
	export extern(Windows) static void HookHandler(ScriptObject thisPtr, int edx, ScriptStackFrame* stack, void* result)
	{
		size_t func;
		size_t retAddr;
		asm
		{
			push EAX;
			mov EAX, [EBP+4];
			mov retAddr, EAX;
			pop EAX;
		}
		if (retAddr >= cast(size_t)mCallFunction && retAddr <= cast(size_t)mCallFunction + 0x100)
		{
			//lea ebp, [esp-404] in CallFunction
			func = *cast(size_t*)(*GetEBP() + 0x414); //3rd arg of CallFunction
		}
		else //ProcessEvent
		{
			//OutputLog( "ProcessEvent: 0x%X\n", ret_addr );
			func = *cast(size_t*)(*GetEBP() + 0x8); //1st arg of ProcessEvent
		}

		ubyte* origCode = stack.Code;
		for (uint i = 0; i < mHookArray.length; i++)
		{
			if (func == cast(size_t)cast(void*)mHookArray[i].HookTarget)
			{
				int argOffset = mHookArray[i].StackSize;
				ubyte* funcArgs = cast(ubyte*)malloc(argOffset);

				for (uint paramNum = 0; *stack.Code != 0x16 && paramNum < mHookArray[i].ArgumentSizes.length; paramNum++) //copy args to buffer, respecting LIFO
				{
					argOffset -= mHookArray[i].ArgumentSizes[paramNum];
					
					ScriptObject po = stack.ParentObject;
					NativeFunction nFunc = mNativeArray[*stack.Code++];
					ubyte* retLocation = funcArgs + argOffset;
					asm
					{
						mov ECX, po;
						// TODO: These and the others are pushing the params in the wrong order.
						push stack;
						push retLocation;
						call nFunc;
					}
					//mNativeArray[*stack.Code++](stack.ParentObject, stack, funcArgs + argOffset);
				}

				if (retAddr >= cast(size_t)mCallFunction && retAddr <= cast(size_t)mCallFunction + 0x100)
				{
					//OutputLog( "Function: %s\n", hook_array[ i ].hook_target->GetName() );
					if(CallHook(mHookArray[i].FunctionHook, stack.ParentObject, mHookArray[i].StackSize, result, funcArgs) == HookType.Block)
					{
						mCleanupStack(stack, result, mHookArray[i].HookTarget);
						free(funcArgs);
						return;
					}
					
					free(funcArgs);
					stack.Code = origCode;
					
					if(mHookArray[i].OriginalFunction)
					{
						mHookArray[i].HookTarget.Function = mHookArray[i].OriginalFunction;

						ScriptFunction ht = mHookArray[i].HookTarget;
						asm
						{
							mov ECX, thisPtr;
							push stack;
							push result;
							push ht;
							call mCallFunction;
						}
						//mCallFunction(thisPtr, stack, result, mHookArray[i].HookTarget);
						mHookArray[i].HookTarget.Function = &HookThunk;
					}
					else
					{
						mHookArray[i].HookTarget.FunctionFlags.UnsetFlag(ScriptFunctionFlags.Native);
						
						ScriptFunction ht = mHookArray[i].HookTarget;
						asm
						{
							mov ECX, thisPtr;
							push stack;
							push result;
							push ht;
							call mCallFunction;
						}
						//mCallFunction(thisPtr, stack, result, mHookArray[i].HookTarget);
						mHookArray[i].HookTarget.FunctionFlags.SetFlag(ScriptFunctionFlags.Native);
					}
				}
				else
				{
					if(CallHook(mHookArray[i].FunctionHook, stack.ParentObject, mHookArray[i].StackSize, result, funcArgs) == HookType.Block)
					{
						free(funcArgs);
						return;
					}
					
					free(funcArgs);

					void* params = *cast(void**)(*GetEBP() + 0xC);
					
					if( mHookArray[ i ].OriginalFunction )
					{
						mHookArray[i].HookTarget.Function = mHookArray[i].OriginalFunction;
						thisPtr.ProcessEvent(mHookArray[i].HookTarget, params, result);
						mHookArray[i].HookTarget.Function = &HookThunk;
					}
					else
					{
						mHookArray[i].HookTarget.FunctionFlags.UnsetFlag(ScriptFunctionFlags.Native);
						thisPtr.ProcessEvent(mHookArray[i].HookTarget, params, result);
						mHookArray[i].HookTarget.FunctionFlags.SetFlag(ScriptFunctionFlags.Native);
					}
				}
				
				return;
			}

		}
	}

	static void AddHook(immutable string functionName, void* hook)
	{
		ScriptFunction scriptFunction = ScriptObject.Find!(ScriptFunction)(functionName);
		
		if(scriptFunction)
			AddHook(scriptFunction, hook);
		//else
		//	OutputLog( "Error: could not find function %s.\n\n", function_name );
	}

	static void AddHook(ScriptFunction scriptFunction, void* hook)
	{
		HookInfo newHook;
		
		newHook.FunctionHook = cast(HookFunction)hook;
		newHook.HookTarget = scriptFunction;
		
		newHook.StackSize = 0;
		
		if(scriptFunction.FunctionFlags.HasFlag(ScriptFunctionFlags.Native))
		{
			newHook.OriginalFunction = cast(NativeFunction)scriptFunction.Function;
		}
		else
		{
			newHook.OriginalFunction = null;
		}

		
		for(ScriptProperty scriptProperty = cast(ScriptProperty)scriptFunction.Children; scriptProperty; scriptProperty = cast(ScriptProperty)scriptProperty.Next)
		{
			if(scriptProperty.PropertyFlags.HasFlag(ScriptPropertyFlags.Param))
			{
				//OutputLog( "Arg %s size %i\n", script_property->GetName(), script_property->element_size );
				newHook.ArgumentSizes ~= scriptProperty.ElementSize;
				newHook.StackSize += scriptProperty.ElementSize;
			}
		}
		
		newHook.StackSize = ((newHook.StackSize >> 2) + ((newHook.StackSize & 0x03) != 0)) << 2;
		
		mHookArray ~= newHook;
		
		scriptFunction.Function = &HookThunk;
		scriptFunction.FunctionFlags.SetFlag(ScriptFunctionFlags.Native);

		//OutputLog( "Hooked function %s (0x%X) (args %i)\n\n", function_name, script_function, new_hook.stack_size );
	}
}
else
{
	static assert(0, "Only x86 is supported!");
}
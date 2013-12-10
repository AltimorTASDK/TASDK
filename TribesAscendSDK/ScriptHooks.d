module ScriptHooks;

private import ScriptClasses;
private import IndentedStreamWriter;
private import std.c.stdlib;
private import std.c.string;

alias HookType function(void* obj, void* result, ubyte* args) HookFunction;
alias extern(Windows) void function(ScriptStackFrame* stack, void* result, ScriptFunction func) CleanupStack;
// These are __thiscall, but, as D doesn't support __thiscall, they are declared
// as __cdecl, and an assembly stub is used to pass the this argument in ECX,
// and push the arguments in right to left order.
alias extern(C++) void function(ScriptStackFrame* stack, void* result) NativeFunction;
alias extern(C++) void function(ScriptStackFrame* stack, void* result, ScriptFunction func) CallFunction;

public struct ScriptStackFrame
{
private:
	byte __padding__[0x10];
	
	ScriptStruct* mNode;
	ScriptObject* mObject;
	ubyte* mCode;
	ubyte* mLocals;
	
	ScriptStackFrame* mPreviousFrame;
	
public:
	@property
	{
		auto ref ScriptStruct* Node() { return mNode; }
		auto ref ScriptObject* ParentObject() { return mObject; }
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

public enum HookOrder
{
	Pre,
	Post,
}

public struct HookInfo
{
private:
	HookFunction mFunctionHook;
	ScriptFunction mHookTarget;
	NativeFunction mOriginalFunction;
	ScriptProperty mReturnParam;
	int[] mArgumentSizes;
	int mStackSize;
	HookOrder mOrder;
	
public:
	@property
	{
		auto ref HookFunction FunctionHook() { return mFunctionHook; }
		auto ref ScriptFunction HookTarget() { return mHookTarget; }
		auto ref NativeFunction OriginalFunction() { return mOriginalFunction; }
		auto ref ScriptProperty ReturnParam() { return mReturnParam; }
		auto ref int[] ArgumentSizes() { return mArgumentSizes; }
		auto ref int StackSize() { return mStackSize; }
		auto ref HookOrder Order() { return mOrder; }
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
	
	static extern(C) HookType CallHook(HookFunction func, ScriptObject* obj, int paramSize, void* result, byte* funcArgs)
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
			
			cmp EDX, ECX;
			je endLoop;
			
		pushLoop:
			push dword ptr [EDX];
			add EDX, 4;
			
			cmp EDX, ECX;
			jl pushLoop;
			
		endLoop:
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
	
	static size_t** GetEBP()
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
			
			push EBP;
			mov EBP, ESP;
			
			push dword ptr [EBP+0xC];
			push dword ptr [EBP+0x8];
			push dword ptr [EBP+0x4];
			push ECX;
			call HookHandler;
			add ESP, 0x10;
			
			pop EBP;
			
			ret 0x8;
		}
	}
	
	export extern(C) static void HookHandler(ScriptObject thisPtr, size_t retAddr, ScriptStackFrame* stack, void* result)
	{
		size_t func;
		//size_t funcPtr = cast(size_t)mCallFunction.funcptr;
		//size_t mPtr = cast(size_t)mCallFunction.ptr;
		size_t mmcallfunc = cast(size_t)mCallFunction;
		if (retAddr >= cast(size_t)mCallFunction && retAddr <= cast(size_t)mCallFunction + 0x100)
		{
			//lea ebp, [esp-404] in CallFunction
			func = *cast(size_t*)(**GetEBP() + 0x404 + 0x10); //3rd arg of CallFunction
		}
		else //ProcessEvent
		{
			//OutputLog( "ProcessEvent: 0x%X\n", ret_addr );
			func = *cast(size_t*)(**GetEBP() + 0x8); //1st arg of ProcessEvent
		}
		
		ubyte* origCode = stack.Code;
		for (uint i = 0; i < mHookArray.length; i++)
		{
			if (func == cast(size_t)cast(void*)mHookArray[i].HookTarget)
			{
				int argOffset = mHookArray[i].StackSize;
				byte* funcArgs = cast(byte*)malloc(argOffset + 3);

				if (retAddr >= cast(size_t)mCallFunction && retAddr <= cast(size_t)mCallFunction + 0x100)
				{
					for (uint paramNum = 0; *stack.Code != 0x16 && paramNum < mHookArray[i].ArgumentSizes.length; paramNum++) //copy args to buffer, respecting LIFO
					{
						argOffset -= mHookArray[i].ArgumentSizes[paramNum];
						
						ScriptObject *po = stack.ParentObject;
						NativeFunction nFunc = mNativeArray[*stack.Code++];
						byte* retLocation = funcArgs + argOffset;
						asm
						{
							mov ECX, po;
							push retLocation;
							push stack;
							call nFunc;
						}
						//mNativeArray[*stack.Code++](stack.ParentObject, stack, funcArgs + argOffset);
					}

					stack.Code = origCode;


					if (mHookArray[i].Order == HookOrder.Post)
					{
						if (mHookArray[i].OriginalFunction)
						{
							mHookArray[i].HookTarget.Function = mHookArray[i].OriginalFunction;
							
							ScriptFunction ht = mHookArray[i].HookTarget;
							asm
							{
								mov ECX, thisPtr;
								push ht;
								push result;
								push stack;
								call mCallFunction;
							}
							
							mHookArray[i].HookTarget.Function = &HookThunk;
						}
						else
						{
							mHookArray[i].HookTarget.FunctionFlags.UnsetFlag(ScriptFunctionFlags.Native);
							
							ScriptFunction ht = mHookArray[i].HookTarget;
							asm
							{
								mov ECX, thisPtr;
								push ht;
								push result;
								push stack;
								call mCallFunction;
							}
							
							mHookArray[i].HookTarget.FunctionFlags.SetFlag(ScriptFunctionFlags.Native);
						}
					}

					if(CallHook(mHookArray[i].FunctionHook, stack.ParentObject, mHookArray[i].StackSize, result, funcArgs + argOffset) == HookType.Block)
					{
						if(mHookArray[i].ReturnParam)
							mHookArray[i].ReturnParam.PropertyFlags.UnsetFlag(~ScriptPropertyFlags.Param);

						mCleanupStack(stack, result, mHookArray[i].HookTarget);

						if(mHookArray[i].ReturnParam)
							mHookArray[i].ReturnParam.PropertyFlags.SetFlag(~ScriptPropertyFlags.Param);

						free(funcArgs);
						return;
					}
					
					free(funcArgs);

					if (mHookArray[i].Order == HookOrder.Pre)
					{
						if (mHookArray[i].OriginalFunction)
						{
							mHookArray[i].HookTarget.Function = mHookArray[i].OriginalFunction;
							
							ScriptFunction ht = mHookArray[i].HookTarget;
							asm
							{
								mov ECX, thisPtr;
								push ht;
								push result;
								push stack;
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
								push ht;
								push result;
								push stack;
								call mCallFunction;
							}
							//mCallFunction(thisPtr, stack, result, mHookArray[i].HookTarget);
							mHookArray[i].HookTarget.FunctionFlags.SetFlag(ScriptFunctionFlags.Native);
						}
					}
				}
				else
				{
					ubyte* params = *cast(ubyte**)(**GetEBP() + 0xC);
					int paramsOffset = 0;

					for (uint paramNum = 0; paramNum < mHookArray[i].ArgumentSizes.length; paramNum++) //copy args to buffer, respecting LIFO
					{
						argOffset -= mHookArray[i].ArgumentSizes[paramNum];
						
						memcpy(funcArgs + argOffset, params + paramsOffset, mHookArray[i].ArgumentSizes[paramNum]);
						
						paramsOffset += mHookArray[i].ArgumentSizes[paramNum];
					}

					if (mHookArray[i].Order == HookOrder.Post)
					{
						if (mHookArray[i].OriginalFunction)
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

					if(CallHook(mHookArray[i].FunctionHook, stack.ParentObject, mHookArray[i].StackSize, result, funcArgs + argOffset) == HookType.Block)
					{
						free(funcArgs);
						return;
					}
					
					free(funcArgs);

					if (mHookArray[i].Order == HookOrder.Pre)
					{
						if (mHookArray[i].OriginalFunction)
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
				}
				
				return;
			}
			
		}
	}
	
	static void AddHook(immutable string functionName, void* hook, HookOrder order)
	{
		ScriptFunction scriptFunction = ScriptObject.Find!(ScriptFunction)(functionName);
		IndentedStreamWriter wtr = new IndentedStreamWriter("TribesAscendSDK-Error.txt");
		
		if(scriptFunction)
			AddHook(scriptFunction, hook, order);
		else
			wtr.WriteLine( "Failed to find function %s.", functionName );
	}
	
	static void AddHook(ScriptFunction scriptFunction, void* hook, HookOrder order)
	{
		HookInfo newHook;
		
		newHook.FunctionHook = cast(HookFunction)hook;
		newHook.HookTarget = scriptFunction;
		newHook.Order = order;
		
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
				if(scriptProperty.IsReturnParameter())
				{
					newHook.mReturnParam = scriptProperty;
				}
				else
				{
					newHook.ArgumentSizes ~= scriptProperty.ElementSize;
					newHook.StackSize += scriptProperty.ElementSize;
				}
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
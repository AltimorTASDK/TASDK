module UnrealScript.Engine.SeqCond_SwitchClass;

import ScriptClasses;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchClass : SeqCond_SwitchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_SwitchClass")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mVerifyDefaultCaseValue;
			ScriptFunction mIsFallThruEnabled;
			ScriptFunction mInsertValueEntry;
			ScriptFunction mRemoveValueEntry;
		}
		public @property static final
		{
			ScriptFunction VerifyDefaultCaseValue() { return mVerifyDefaultCaseValue ? mVerifyDefaultCaseValue : (mVerifyDefaultCaseValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchClass.VerifyDefaultCaseValue")); }
			ScriptFunction IsFallThruEnabled() { return mIsFallThruEnabled ? mIsFallThruEnabled : (mIsFallThruEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchClass.IsFallThruEnabled")); }
			ScriptFunction InsertValueEntry() { return mInsertValueEntry ? mInsertValueEntry : (mInsertValueEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchClass.InsertValueEntry")); }
			ScriptFunction RemoveValueEntry() { return mRemoveValueEntry ? mRemoveValueEntry : (mRemoveValueEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchClass.RemoveValueEntry")); }
		}
	}
	struct SwitchClassInfo
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SeqCond_SwitchClass.SwitchClassInfo")); }
		@property final auto ref
		{
			ubyte bFallThru() { return *cast(ubyte*)(cast(size_t)&this + 8); }
			ScriptName ClassName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo) ClassArray() { return *cast(ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo)*)(cast(size_t)cast(void*)this + 208); }
final:
	void VerifyDefaultCaseValue()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyDefaultCaseValue, cast(void*)0, cast(void*)0);
	}
	bool IsFallThruEnabled(int ValueIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFallThruEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InsertValueEntry(int InsertIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InsertIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertValueEntry, params.ptr, cast(void*)0);
	}
	void RemoveValueEntry(int RemoveIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RemoveIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveValueEntry, params.ptr, cast(void*)0);
	}
}

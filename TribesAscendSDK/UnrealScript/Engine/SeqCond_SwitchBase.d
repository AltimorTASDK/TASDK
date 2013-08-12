module UnrealScript.Engine.SeqCond_SwitchBase;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_SwitchBase : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_SwitchBase")); }
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
			ScriptFunction VerifyDefaultCaseValue() { return mVerifyDefaultCaseValue ? mVerifyDefaultCaseValue : (mVerifyDefaultCaseValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchBase.VerifyDefaultCaseValue")); }
			ScriptFunction IsFallThruEnabled() { return mIsFallThruEnabled ? mIsFallThruEnabled : (mIsFallThruEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchBase.IsFallThruEnabled")); }
			ScriptFunction InsertValueEntry() { return mInsertValueEntry ? mInsertValueEntry : (mInsertValueEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchBase.InsertValueEntry")); }
			ScriptFunction RemoveValueEntry() { return mRemoveValueEntry ? mRemoveValueEntry : (mRemoveValueEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchBase.RemoveValueEntry")); }
		}
	}
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

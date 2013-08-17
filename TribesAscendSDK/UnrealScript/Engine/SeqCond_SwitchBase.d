module UnrealScript.Engine.SeqCond_SwitchBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_SwitchBase : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_SwitchBase")); }
	private static __gshared SeqCond_SwitchBase mDefaultProperties;
	@property final static SeqCond_SwitchBase DefaultProperties() { mixin(MGDPC("SeqCond_SwitchBase", "SeqCond_SwitchBase Engine.Default__SeqCond_SwitchBase")); }
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
			ScriptFunction VerifyDefaultCaseValue() { mixin(MGF("mVerifyDefaultCaseValue", "Function Engine.SeqCond_SwitchBase.VerifyDefaultCaseValue")); }
			ScriptFunction IsFallThruEnabled() { mixin(MGF("mIsFallThruEnabled", "Function Engine.SeqCond_SwitchBase.IsFallThruEnabled")); }
			ScriptFunction InsertValueEntry() { mixin(MGF("mInsertValueEntry", "Function Engine.SeqCond_SwitchBase.InsertValueEntry")); }
			ScriptFunction RemoveValueEntry() { mixin(MGF("mRemoveValueEntry", "Function Engine.SeqCond_SwitchBase.RemoveValueEntry")); }
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

module UnrealScript.Engine.SeqCond_SwitchClass;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchClass : SeqCond_SwitchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_SwitchClass")()); }
	private static __gshared SeqCond_SwitchClass mDefaultProperties;
	@property final static SeqCond_SwitchClass DefaultProperties() { mixin(MGDPC!(SeqCond_SwitchClass, "SeqCond_SwitchClass Engine.Default__SeqCond_SwitchClass")()); }
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
			ScriptFunction VerifyDefaultCaseValue() { mixin(MGF!("mVerifyDefaultCaseValue", "Function Engine.SeqCond_SwitchClass.VerifyDefaultCaseValue")()); }
			ScriptFunction IsFallThruEnabled() { mixin(MGF!("mIsFallThruEnabled", "Function Engine.SeqCond_SwitchClass.IsFallThruEnabled")()); }
			ScriptFunction InsertValueEntry() { mixin(MGF!("mInsertValueEntry", "Function Engine.SeqCond_SwitchClass.InsertValueEntry")()); }
			ScriptFunction RemoveValueEntry() { mixin(MGF!("mRemoveValueEntry", "Function Engine.SeqCond_SwitchClass.RemoveValueEntry")()); }
		}
	}
	struct SwitchClassInfo
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SeqCond_SwitchClass.SwitchClassInfo")()); }
		@property final auto ref
		{
			ubyte bFallThru() { mixin(MGPS!(ubyte, 8)()); }
			ScriptName ClassName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo) ClassArray() { mixin(MGPC!(ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo), 208)()); }
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

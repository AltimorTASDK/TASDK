module UnrealScript.Engine.SeqCond_SwitchObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchObject : SeqCond_SwitchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_SwitchObject")()); }
	private static __gshared SeqCond_SwitchObject mDefaultProperties;
	@property final static SeqCond_SwitchObject DefaultProperties() { mixin(MGDPC!(SeqCond_SwitchObject, "SeqCond_SwitchObject Engine.Default__SeqCond_SwitchObject")()); }
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
			ScriptFunction VerifyDefaultCaseValue() { mixin(MGF!("mVerifyDefaultCaseValue", "Function Engine.SeqCond_SwitchObject.VerifyDefaultCaseValue")()); }
			ScriptFunction IsFallThruEnabled() { mixin(MGF!("mIsFallThruEnabled", "Function Engine.SeqCond_SwitchObject.IsFallThruEnabled")()); }
			ScriptFunction InsertValueEntry() { mixin(MGF!("mInsertValueEntry", "Function Engine.SeqCond_SwitchObject.InsertValueEntry")()); }
			ScriptFunction RemoveValueEntry() { mixin(MGF!("mRemoveValueEntry", "Function Engine.SeqCond_SwitchObject.RemoveValueEntry")()); }
		}
	}
	struct SwitchObjectCase
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SeqCond_SwitchObject.SwitchObjectCase")()); }
		@property final
		{
			@property final auto ref UObject ObjectValue() { mixin(MGPS!("UObject", 0)()); }
			bool bDefaultValue() { mixin(MGBPS!(4, 0x2)()); }
			bool bDefaultValue(bool val) { mixin(MSBPS!(4, 0x2)()); }
			bool bFallThru() { mixin(MGBPS!(4, 0x1)()); }
			bool bFallThru(bool val) { mixin(MSBPS!(4, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(SeqCond_SwitchObject.SwitchObjectCase) SupportedValues() { mixin(MGPC!("ScriptArray!(SeqCond_SwitchObject.SwitchObjectCase)", 208)()); }
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

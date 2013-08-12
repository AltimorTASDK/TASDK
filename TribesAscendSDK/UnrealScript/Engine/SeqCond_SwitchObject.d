module UnrealScript.Engine.SeqCond_SwitchObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchObject : SeqCond_SwitchBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_SwitchObject")); }
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
			ScriptFunction VerifyDefaultCaseValue() { return mVerifyDefaultCaseValue ? mVerifyDefaultCaseValue : (mVerifyDefaultCaseValue = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchObject.VerifyDefaultCaseValue")); }
			ScriptFunction IsFallThruEnabled() { return mIsFallThruEnabled ? mIsFallThruEnabled : (mIsFallThruEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchObject.IsFallThruEnabled")); }
			ScriptFunction InsertValueEntry() { return mInsertValueEntry ? mInsertValueEntry : (mInsertValueEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchObject.InsertValueEntry")); }
			ScriptFunction RemoveValueEntry() { return mRemoveValueEntry ? mRemoveValueEntry : (mRemoveValueEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_SwitchObject.RemoveValueEntry")); }
		}
	}
	struct SwitchObjectCase
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SeqCond_SwitchObject.SwitchObjectCase")); }
		@property final
		{
			@property final auto ref UObject ObjectValue() { return *cast(UObject*)(cast(size_t)&this + 0); }
			bool bDefaultValue() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
			bool bDefaultValue(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
			bool bFallThru() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bFallThru(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(SeqCond_SwitchObject.SwitchObjectCase) SupportedValues() { return *cast(ScriptArray!(SeqCond_SwitchObject.SwitchObjectCase)*)(cast(size_t)cast(void*)this + 208); }
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

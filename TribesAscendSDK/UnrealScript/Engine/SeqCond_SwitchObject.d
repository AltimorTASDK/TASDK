module UnrealScript.Engine.SeqCond_SwitchObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchObject : SeqCond_SwitchBase
{
	struct SwitchObjectCase
	{
		public @property final bool bDefaultValue() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
		public @property final bool bDefaultValue(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
		private ubyte __bDefaultValue[4];
		public @property final bool bFallThru() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bFallThru(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bFallThru[4];
		public @property final auto ref UObject ObjectValue() { return *cast(UObject*)(cast(size_t)&this + 0); }
		private ubyte __ObjectValue[4];
	}
	public @property final auto ref ScriptArray!(SeqCond_SwitchObject.SwitchObjectCase) SupportedValues() { return *cast(ScriptArray!(SeqCond_SwitchObject.SwitchObjectCase)*)(cast(size_t)cast(void*)this + 208); }
	final void VerifyDefaultCaseValue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26066], cast(void*)0, cast(void*)0);
	}
	final bool IsFallThruEnabled(int ValueIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26068], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void InsertValueEntry(int InsertIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InsertIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26071], params.ptr, cast(void*)0);
	}
	final void RemoveValueEntry(int RemoveIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RemoveIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26073], params.ptr, cast(void*)0);
	}
}

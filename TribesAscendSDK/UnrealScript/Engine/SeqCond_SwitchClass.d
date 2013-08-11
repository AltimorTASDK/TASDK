module UnrealScript.Engine.SeqCond_SwitchClass;

import ScriptClasses;
import UnrealScript.Engine.SeqCond_SwitchBase;

extern(C++) interface SeqCond_SwitchClass : SeqCond_SwitchBase
{
	struct SwitchClassInfo
	{
		public @property final auto ref ubyte bFallThru() { return *cast(ubyte*)(cast(size_t)&this + 8); }
		private ubyte __bFallThru[1];
		public @property final auto ref ScriptName ClassName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ClassName[8];
	}
	public @property final auto ref ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo) ClassArray() { return *cast(ScriptArray!(SeqCond_SwitchClass.SwitchClassInfo)*)(cast(size_t)cast(void*)this + 208); }
	final void VerifyDefaultCaseValue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26052], cast(void*)0, cast(void*)0);
	}
	final bool IsFallThruEnabled(int ValueIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26053], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void InsertValueEntry(int InsertIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InsertIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26056], params.ptr, cast(void*)0);
	}
	final void RemoveValueEntry(int RemoveIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RemoveIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26058], params.ptr, cast(void*)0);
	}
}

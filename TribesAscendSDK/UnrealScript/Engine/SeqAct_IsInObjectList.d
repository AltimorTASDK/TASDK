module UnrealScript.Engine.SeqAct_IsInObjectList;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_IsInObjectList : SequenceAction
{
	public @property final bool bObjectFound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bObjectFound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bCheckForAllObjects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bCheckForAllObjects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
}

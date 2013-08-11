module UnrealScript.Engine.SeqAct_AttachToEvent;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AttachToEvent : SequenceAction
{
	public @property final bool bPreferController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bPreferController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
}

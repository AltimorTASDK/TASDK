module UnrealScript.TribesGame.TrSeqAct_AIStopJetting;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStopJetting : SequenceAction
{
	public @property final bool m_bResetVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool m_bResetVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
}

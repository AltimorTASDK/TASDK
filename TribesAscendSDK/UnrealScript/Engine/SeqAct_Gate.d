module UnrealScript.Engine.SeqAct_Gate;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Gate : SequenceAction
{
	public @property final auto ref int CurrentCloseCount() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref int AutoCloseCount() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
}

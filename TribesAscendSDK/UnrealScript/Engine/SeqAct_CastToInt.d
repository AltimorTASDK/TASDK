module UnrealScript.Engine.SeqAct_CastToInt;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_CastToInt : SeqAct_SetSequenceVariable
{
	public @property final auto ref int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float Value() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bTruncate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bTruncate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
}

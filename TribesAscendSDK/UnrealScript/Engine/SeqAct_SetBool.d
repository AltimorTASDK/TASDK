module UnrealScript.Engine.SeqAct_SetBool;

import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetBool : SeqAct_SetSequenceVariable
{
	public @property final bool DefaultValue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool DefaultValue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
}

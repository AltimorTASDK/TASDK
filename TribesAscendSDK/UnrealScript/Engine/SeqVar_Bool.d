module UnrealScript.Engine.SeqVar_Bool;

import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Bool : SequenceVariable
{
public extern(D):
	@property final auto ref int bValue() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
}

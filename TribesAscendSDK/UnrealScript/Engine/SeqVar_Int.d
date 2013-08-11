module UnrealScript.Engine.SeqVar_Int;

import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Int : SequenceVariable
{
public extern(D):
	@property final auto ref int IntValue() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
}

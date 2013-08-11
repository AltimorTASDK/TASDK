module UnrealScript.Engine.SeqVar_Float;

import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Float : SequenceVariable
{
public extern(D):
	@property final auto ref float FloatValue() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}

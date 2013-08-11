module UnrealScript.Engine.SeqVar_RandomInt;

import UnrealScript.Engine.SeqVar_Int;

extern(C++) interface SeqVar_RandomInt : SeqVar_Int
{
public extern(D):
	@property final auto ref
	{
		int Max() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
		int Min() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	}
}

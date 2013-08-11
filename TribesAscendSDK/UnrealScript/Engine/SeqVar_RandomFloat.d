module UnrealScript.Engine.SeqVar_RandomFloat;

import UnrealScript.Engine.SeqVar_Float;

extern(C++) interface SeqVar_RandomFloat : SeqVar_Float
{
public extern(D):
	@property final auto ref
	{
		float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
		float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	}
}

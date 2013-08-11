module UnrealScript.Engine.SeqVar_RandomFloat;

import UnrealScript.Engine.SeqVar_Float;

extern(C++) interface SeqVar_RandomFloat : SeqVar_Float
{
	public @property final auto ref float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
}

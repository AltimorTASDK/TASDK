module UnrealScript.Engine.DistributionFloatUniform;

import UnrealScript.Core.DistributionFloat;

extern(C++) interface DistributionFloatUniform : DistributionFloat
{
	public @property final auto ref float Max() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float Min() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
}

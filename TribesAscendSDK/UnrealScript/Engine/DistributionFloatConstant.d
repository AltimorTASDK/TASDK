module UnrealScript.Engine.DistributionFloatConstant;

import UnrealScript.Core.DistributionFloat;

extern(C++) interface DistributionFloatConstant : DistributionFloat
{
	public @property final auto ref float Constant() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
}

module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;

import UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLocationPrimitiveSphere : ParticleModuleLocationPrimitiveBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat StartRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 132); }
}

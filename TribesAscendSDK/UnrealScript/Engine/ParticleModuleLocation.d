module UnrealScript.Engine.ParticleModuleLocation;

import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocation : ParticleModuleLocationBase
{
public extern(D):
	@property final auto ref DistributionVector.RawDistributionVector StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}

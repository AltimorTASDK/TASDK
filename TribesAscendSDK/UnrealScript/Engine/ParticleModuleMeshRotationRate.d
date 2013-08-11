module UnrealScript.Engine.ParticleModuleMeshRotationRate;

import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRate : ParticleModuleRotationRateBase
{
	public @property final auto ref DistributionVector.RawDistributionVector StartRotationRate() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}

module UnrealScript.Engine.ParticleModuleMeshRotationRateMultiplyLife;

import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRateMultiplyLife : ParticleModuleRotationRateBase
{
	public @property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}

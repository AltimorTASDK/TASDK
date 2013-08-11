module UnrealScript.Engine.ParticleModuleAccelerationOverLifetime;

import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAccelerationBase;

extern(C++) interface ParticleModuleAccelerationOverLifetime : ParticleModuleAccelerationBase
{
	public @property final auto ref DistributionVector.RawDistributionVector AccelOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
}

module UnrealScript.Engine.ParticleModuleRotationRateMultiplyLife;

import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationRateMultiplyLife : ParticleModuleRotationRateBase
{
public extern(D):
	@property final auto ref DistributionFloat.RawDistributionFloat LifeMultiplier() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}

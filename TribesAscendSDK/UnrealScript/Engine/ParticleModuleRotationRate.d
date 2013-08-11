module UnrealScript.Engine.ParticleModuleRotationRate;

import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationRate : ParticleModuleRotationRateBase
{
public extern(D):
	@property final auto ref DistributionFloat.RawDistributionFloat StartRotationRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}

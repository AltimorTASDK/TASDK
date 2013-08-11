module UnrealScript.Engine.ParticleModuleRotation;

import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotation : ParticleModuleRotationBase
{
public extern(D):
	@property final auto ref DistributionFloat.RawDistributionFloat StartRotation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}

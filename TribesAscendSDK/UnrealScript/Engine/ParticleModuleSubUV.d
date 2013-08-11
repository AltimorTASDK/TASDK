module UnrealScript.Engine.ParticleModuleSubUV;

import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleSubUV : ParticleModuleSubUVBase
{
public extern(D):
	@property final auto ref DistributionFloat.RawDistributionFloat SubImageIndex() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}

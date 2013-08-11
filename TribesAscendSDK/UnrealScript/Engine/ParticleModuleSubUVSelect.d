module UnrealScript.Engine.ParticleModuleSubUVSelect;

import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSubUVSelect : ParticleModuleSubUVBase
{
	public @property final auto ref DistributionVector.RawDistributionVector SubImageSelect() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}

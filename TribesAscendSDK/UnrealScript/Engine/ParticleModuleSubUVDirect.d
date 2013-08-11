module UnrealScript.Engine.ParticleModuleSubUVDirect;

import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSubUVDirect : ParticleModuleSubUVBase
{
	public @property final auto ref DistributionVector.RawDistributionVector SubUVSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref DistributionVector.RawDistributionVector SubUVPosition() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}

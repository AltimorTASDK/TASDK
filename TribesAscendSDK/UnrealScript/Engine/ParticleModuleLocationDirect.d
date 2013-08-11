module UnrealScript.Engine.ParticleModuleLocationDirect;

import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocationDirect : ParticleModuleLocationBase
{
	public @property final auto ref DistributionVector.RawDistributionVector Direction() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref DistributionVector.RawDistributionVector ScaleFactor() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref DistributionVector.RawDistributionVector LocationOffset() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref DistributionVector.RawDistributionVector Location() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}

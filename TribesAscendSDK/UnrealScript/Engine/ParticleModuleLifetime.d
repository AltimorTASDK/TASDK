module UnrealScript.Engine.ParticleModuleLifetime;

import UnrealScript.Engine.ParticleModuleLifetimeBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLifetime : ParticleModuleLifetimeBase
{
	public @property final auto ref DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}

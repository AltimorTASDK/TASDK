module UnrealScript.Engine.ParticleModuleLifetime_Seeded;

import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleLifetime;

extern(C++) interface ParticleModuleLifetime_Seeded : ParticleModuleLifetime
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

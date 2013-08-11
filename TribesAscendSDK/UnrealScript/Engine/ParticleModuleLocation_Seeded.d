module UnrealScript.Engine.ParticleModuleLocation_Seeded;

import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleLocation;

extern(C++) interface ParticleModuleLocation_Seeded : ParticleModuleLocation
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

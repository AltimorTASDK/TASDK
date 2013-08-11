module UnrealScript.Engine.ParticleModuleSize_Seeded;

import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleSize;

extern(C++) interface ParticleModuleSize_Seeded : ParticleModuleSize
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

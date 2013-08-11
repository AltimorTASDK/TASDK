module UnrealScript.Engine.ParticleModuleRotation_Seeded;

import UnrealScript.Engine.ParticleModuleRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotation_Seeded : ParticleModuleRotation
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

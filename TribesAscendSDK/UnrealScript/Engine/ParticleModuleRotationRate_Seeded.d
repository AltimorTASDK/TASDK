module UnrealScript.Engine.ParticleModuleRotationRate_Seeded;

import UnrealScript.Engine.ParticleModuleRotationRate;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationRate_Seeded : ParticleModuleRotationRate
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

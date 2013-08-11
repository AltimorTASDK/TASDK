module UnrealScript.Engine.ParticleModuleMeshRotationRate_Seeded;

import UnrealScript.Engine.ParticleModuleMeshRotationRate;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotationRate_Seeded : ParticleModuleMeshRotationRate
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

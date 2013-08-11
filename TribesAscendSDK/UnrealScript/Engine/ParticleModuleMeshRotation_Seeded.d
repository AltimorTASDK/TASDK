module UnrealScript.Engine.ParticleModuleMeshRotation_Seeded;

import UnrealScript.Engine.ParticleModuleMeshRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotation_Seeded : ParticleModuleMeshRotation
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 104); }
}

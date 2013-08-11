module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere_Seeded;

import UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationPrimitiveSphere_Seeded : ParticleModuleLocationPrimitiveSphere
{
	public @property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 160); }
}

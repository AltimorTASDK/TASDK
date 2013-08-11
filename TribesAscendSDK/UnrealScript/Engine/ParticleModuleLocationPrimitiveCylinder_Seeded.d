module UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder_Seeded;

import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationPrimitiveCylinder_Seeded : ParticleModuleLocationPrimitiveCylinder
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 196); }
}

module UnrealScript.Engine.ParticleModuleVelocity_Seeded;

import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleVelocity;

extern(C++) interface ParticleModuleVelocity_Seeded : ParticleModuleVelocity
{
	public @property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 132); }
}

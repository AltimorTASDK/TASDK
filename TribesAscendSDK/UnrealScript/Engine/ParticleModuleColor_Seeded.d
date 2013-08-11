module UnrealScript.Engine.ParticleModuleColor_Seeded;

import UnrealScript.Engine.ParticleModuleColor;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleColor_Seeded : ParticleModuleColor
{
	public @property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 132); }
}

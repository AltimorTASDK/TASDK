module UnrealScript.Engine.ParticleModuleParameterDynamic_Seeded;

import UnrealScript.Engine.ParticleModuleParameterDynamic;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleParameterDynamic_Seeded : ParticleModuleParameterDynamic
{
public extern(D):
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 84); }
}

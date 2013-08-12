module UnrealScript.Engine.ParticleModuleLocation_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleLocation;

extern(C++) interface ParticleModuleLocation_Seeded : ParticleModuleLocation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocation_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

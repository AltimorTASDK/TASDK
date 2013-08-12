module UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationPrimitiveCylinder_Seeded : ParticleModuleLocationPrimitiveCylinder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationPrimitiveCylinder_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 196); }
}

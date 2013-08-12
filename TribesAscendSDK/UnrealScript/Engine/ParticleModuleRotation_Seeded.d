module UnrealScript.Engine.ParticleModuleRotation_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotation_Seeded : ParticleModuleRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotation_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

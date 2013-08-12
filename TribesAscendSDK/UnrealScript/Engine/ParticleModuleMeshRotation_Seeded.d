module UnrealScript.Engine.ParticleModuleMeshRotation_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleMeshRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotation_Seeded : ParticleModuleMeshRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotation_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 104); }
}

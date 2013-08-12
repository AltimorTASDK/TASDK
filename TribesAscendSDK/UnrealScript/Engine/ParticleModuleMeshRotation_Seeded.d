module UnrealScript.Engine.ParticleModuleMeshRotation_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleMeshRotation;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotation_Seeded : ParticleModuleMeshRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotation_Seeded")); }
	private static __gshared ParticleModuleMeshRotation_Seeded mDefaultProperties;
	@property final static ParticleModuleMeshRotation_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMeshRotation_Seeded)("ParticleModuleMeshRotation_Seeded Engine.Default__ParticleModuleMeshRotation_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 104); }
}

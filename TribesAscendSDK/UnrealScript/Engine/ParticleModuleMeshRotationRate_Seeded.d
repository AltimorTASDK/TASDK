module UnrealScript.Engine.ParticleModuleMeshRotationRate_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleMeshRotationRate;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleMeshRotationRate_Seeded : ParticleModuleMeshRotationRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotationRate_Seeded")); }
	private static __gshared ParticleModuleMeshRotationRate_Seeded mDefaultProperties;
	@property final static ParticleModuleMeshRotationRate_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleMeshRotationRate_Seeded)("ParticleModuleMeshRotationRate_Seeded Engine.Default__ParticleModuleMeshRotationRate_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

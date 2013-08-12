module UnrealScript.Engine.ParticleModuleRotationRate_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationRate;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleRotationRate_Seeded : ParticleModuleRotationRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotationRate_Seeded")); }
	private static __gshared ParticleModuleRotationRate_Seeded mDefaultProperties;
	@property final static ParticleModuleRotationRate_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleRotationRate_Seeded)("ParticleModuleRotationRate_Seeded Engine.Default__ParticleModuleRotationRate_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

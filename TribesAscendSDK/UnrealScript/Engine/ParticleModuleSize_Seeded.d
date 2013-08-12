module UnrealScript.Engine.ParticleModuleSize_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleSize;

extern(C++) interface ParticleModuleSize_Seeded : ParticleModuleSize
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSize_Seeded")); }
	private static __gshared ParticleModuleSize_Seeded mDefaultProperties;
	@property final static ParticleModuleSize_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSize_Seeded)("ParticleModuleSize_Seeded Engine.Default__ParticleModuleSize_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

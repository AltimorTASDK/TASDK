module UnrealScript.Engine.ParticleModuleLifetime_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleLifetime;

extern(C++) interface ParticleModuleLifetime_Seeded : ParticleModuleLifetime
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLifetime_Seeded")); }
	private static __gshared ParticleModuleLifetime_Seeded mDefaultProperties;
	@property final static ParticleModuleLifetime_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleLifetime_Seeded)("ParticleModuleLifetime_Seeded Engine.Default__ParticleModuleLifetime_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 100); }
}

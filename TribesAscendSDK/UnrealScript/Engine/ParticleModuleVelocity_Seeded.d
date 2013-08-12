module UnrealScript.Engine.ParticleModuleVelocity_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;
import UnrealScript.Engine.ParticleModuleVelocity;

extern(C++) interface ParticleModuleVelocity_Seeded : ParticleModuleVelocity
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleVelocity_Seeded")); }
	private static __gshared ParticleModuleVelocity_Seeded mDefaultProperties;
	@property final static ParticleModuleVelocity_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleVelocity_Seeded)("ParticleModuleVelocity_Seeded Engine.Default__ParticleModuleVelocity_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 132); }
}

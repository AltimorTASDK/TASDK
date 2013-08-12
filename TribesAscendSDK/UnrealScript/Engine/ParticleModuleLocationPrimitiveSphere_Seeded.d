module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationPrimitiveSphere_Seeded : ParticleModuleLocationPrimitiveSphere
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationPrimitiveSphere_Seeded")); }
	private static __gshared ParticleModuleLocationPrimitiveSphere_Seeded mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveSphere_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleLocationPrimitiveSphere_Seeded)("ParticleModuleLocationPrimitiveSphere_Seeded Engine.Default__ParticleModuleLocationPrimitiveSphere_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 160); }
}

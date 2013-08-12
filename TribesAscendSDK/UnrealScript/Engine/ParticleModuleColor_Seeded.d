module UnrealScript.Engine.ParticleModuleColor_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleColor;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleColor_Seeded : ParticleModuleColor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleColor_Seeded")); }
	private static __gshared ParticleModuleColor_Seeded mDefaultProperties;
	@property final static ParticleModuleColor_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleColor_Seeded)("ParticleModuleColor_Seeded Engine.Default__ParticleModuleColor_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 132); }
}

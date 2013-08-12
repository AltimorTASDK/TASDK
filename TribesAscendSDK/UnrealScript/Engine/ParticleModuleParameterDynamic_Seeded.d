module UnrealScript.Engine.ParticleModuleParameterDynamic_Seeded;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleParameterDynamic;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleParameterDynamic_Seeded : ParticleModuleParameterDynamic
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleParameterDynamic_Seeded")); }
	private static __gshared ParticleModuleParameterDynamic_Seeded mDefaultProperties;
	@property final static ParticleModuleParameterDynamic_Seeded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleParameterDynamic_Seeded)("ParticleModuleParameterDynamic_Seeded Engine.Default__ParticleModuleParameterDynamic_Seeded")); }
	@property final auto ref ParticleModule.ParticleRandomSeedInfo RandomSeedInfo() { return *cast(ParticleModule.ParticleRandomSeedInfo*)(cast(size_t)cast(void*)this + 84); }
}

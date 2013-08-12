module UnrealScript.Engine.ParticleModuleStoreSpawnTimeBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleStoreSpawnTimeBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleStoreSpawnTimeBase")); }
	private static __gshared ParticleModuleStoreSpawnTimeBase mDefaultProperties;
	@property final static ParticleModuleStoreSpawnTimeBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleStoreSpawnTimeBase)("ParticleModuleStoreSpawnTimeBase Engine.Default__ParticleModuleStoreSpawnTimeBase")); }
}

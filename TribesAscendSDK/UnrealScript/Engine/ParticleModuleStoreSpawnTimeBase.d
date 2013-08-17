module UnrealScript.Engine.ParticleModuleStoreSpawnTimeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleStoreSpawnTimeBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleStoreSpawnTimeBase")()); }
	private static __gshared ParticleModuleStoreSpawnTimeBase mDefaultProperties;
	@property final static ParticleModuleStoreSpawnTimeBase DefaultProperties() { mixin(MGDPC!(ParticleModuleStoreSpawnTimeBase, "ParticleModuleStoreSpawnTimeBase Engine.Default__ParticleModuleStoreSpawnTimeBase")()); }
}

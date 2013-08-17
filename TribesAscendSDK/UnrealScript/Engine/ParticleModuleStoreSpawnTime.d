module UnrealScript.Engine.ParticleModuleStoreSpawnTime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleStoreSpawnTimeBase;

extern(C++) interface ParticleModuleStoreSpawnTime : ParticleModuleStoreSpawnTimeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleStoreSpawnTime")); }
	private static __gshared ParticleModuleStoreSpawnTime mDefaultProperties;
	@property final static ParticleModuleStoreSpawnTime DefaultProperties() { mixin(MGDPC("ParticleModuleStoreSpawnTime", "ParticleModuleStoreSpawnTime Engine.Default__ParticleModuleStoreSpawnTime")); }
}

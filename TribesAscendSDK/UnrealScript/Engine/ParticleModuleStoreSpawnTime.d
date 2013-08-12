module UnrealScript.Engine.ParticleModuleStoreSpawnTime;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleStoreSpawnTimeBase;

extern(C++) interface ParticleModuleStoreSpawnTime : ParticleModuleStoreSpawnTimeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleStoreSpawnTime")); }
}

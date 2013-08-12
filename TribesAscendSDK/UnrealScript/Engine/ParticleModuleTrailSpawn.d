module UnrealScript.Engine.ParticleModuleTrailSpawn;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTrailBase;

extern(C++) interface ParticleModuleTrailSpawn : ParticleModuleTrailBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTrailSpawn")); }
	private static __gshared ParticleModuleTrailSpawn mDefaultProperties;
	@property final static ParticleModuleTrailSpawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTrailSpawn)("ParticleModuleTrailSpawn Engine.Default__ParticleModuleTrailSpawn")); }
	enum ETrail2SpawnMethod : ubyte
	{
		PET2SM_Emitter = 0,
		PET2SM_Velocity = 1,
		PET2SM_Distance = 2,
		PET2SM_MAX = 3,
	}
	@property final auto ref float MinSpawnVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
}

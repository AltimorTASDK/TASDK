module UnrealScript.Engine.ParticleModuleTrailSpawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTrailBase;

extern(C++) interface ParticleModuleTrailSpawn : ParticleModuleTrailBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleTrailSpawn")); }
	private static __gshared ParticleModuleTrailSpawn mDefaultProperties;
	@property final static ParticleModuleTrailSpawn DefaultProperties() { mixin(MGDPC("ParticleModuleTrailSpawn", "ParticleModuleTrailSpawn Engine.Default__ParticleModuleTrailSpawn")); }
	enum ETrail2SpawnMethod : ubyte
	{
		PET2SM_Emitter = 0,
		PET2SM_Velocity = 1,
		PET2SM_Distance = 2,
		PET2SM_MAX = 3,
	}
	@property final auto ref
	{
		float MinSpawnVelocity() { mixin(MGPC("float", 76)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SpawnDistanceMap'!
	}
}

module UnrealScript.Engine.ParticleModuleTrailSpawn;

import UnrealScript.Engine.ParticleModuleTrailBase;

extern(C++) interface ParticleModuleTrailSpawn : ParticleModuleTrailBase
{
	enum ETrail2SpawnMethod : ubyte
	{
		PET2SM_Emitter = 0,
		PET2SM_Velocity = 1,
		PET2SM_Distance = 2,
		PET2SM_MAX = 3,
	}
	public @property final auto ref float MinSpawnVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
}

module UnrealScript.Engine.ParticleModuleCollisionBase;

import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleCollisionBase : ParticleModule
{
public extern(D):
	enum EParticleCollisionComplete : ubyte
	{
		EPCC_Kill = 0,
		EPCC_Freeze = 1,
		EPCC_HaltCollisions = 2,
		EPCC_FreezeTranslation = 3,
		EPCC_FreezeRotation = 4,
		EPCC_FreezeMovement = 5,
		EPCC_MAX = 6,
	}
}

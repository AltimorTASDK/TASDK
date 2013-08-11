module UnrealScript.Engine.ParticleSpriteEmitter;

import UnrealScript.Engine.ParticleEmitter;

extern(C++) interface ParticleSpriteEmitter : ParticleEmitter
{
	enum EParticleScreenAlignment : ubyte
	{
		PSA_Square = 0,
		PSA_Rectangle = 1,
		PSA_Velocity = 2,
		PSA_TypeSpecific = 3,
		PSA_MAX = 4,
	}
}

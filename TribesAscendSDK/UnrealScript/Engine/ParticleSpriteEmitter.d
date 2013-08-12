module UnrealScript.Engine.ParticleSpriteEmitter;

import ScriptClasses;
import UnrealScript.Engine.ParticleEmitter;

extern(C++) interface ParticleSpriteEmitter : ParticleEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleSpriteEmitter")); }
	private static __gshared ParticleSpriteEmitter mDefaultProperties;
	@property final static ParticleSpriteEmitter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleSpriteEmitter)("ParticleSpriteEmitter Engine.Default__ParticleSpriteEmitter")); }
	enum EParticleScreenAlignment : ubyte
	{
		PSA_Square = 0,
		PSA_Rectangle = 1,
		PSA_Velocity = 2,
		PSA_TypeSpecific = 3,
		PSA_MAX = 4,
	}
}

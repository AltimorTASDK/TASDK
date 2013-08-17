module UnrealScript.Engine.ParticleModuleOrientationAxisLock;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleOrientationBase;

extern(C++) interface ParticleModuleOrientationAxisLock : ParticleModuleOrientationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleOrientationAxisLock")()); }
	private static __gshared ParticleModuleOrientationAxisLock mDefaultProperties;
	@property final static ParticleModuleOrientationAxisLock DefaultProperties() { mixin(MGDPC!(ParticleModuleOrientationAxisLock, "ParticleModuleOrientationAxisLock Engine.Default__ParticleModuleOrientationAxisLock")()); }
	enum EParticleAxisLock : ubyte
	{
		EPAL_NONE = 0,
		EPAL_X = 1,
		EPAL_Y = 2,
		EPAL_Z = 3,
		EPAL_NEGATIVE_X = 4,
		EPAL_NEGATIVE_Y = 5,
		EPAL_NEGATIVE_Z = 6,
		EPAL_ROTATE_X = 7,
		EPAL_ROTATE_Y = 8,
		EPAL_ROTATE_Z = 9,
		EPAL_MAX = 10,
	}
	@property final auto ref ParticleModuleOrientationAxisLock.EParticleAxisLock LockAxisFlags() { mixin(MGPC!(ParticleModuleOrientationAxisLock.EParticleAxisLock, 72)()); }
}

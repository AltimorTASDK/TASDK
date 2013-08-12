module UnrealScript.UTGame.UTStingerMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTStingerMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTStingerMuzzleFlashLight")); }
	private static __gshared UTStingerMuzzleFlashLight mDefaultProperties;
	@property final static UTStingerMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTStingerMuzzleFlashLight)("UTStingerMuzzleFlashLight UTGame.Default__UTStingerMuzzleFlashLight")); }
}

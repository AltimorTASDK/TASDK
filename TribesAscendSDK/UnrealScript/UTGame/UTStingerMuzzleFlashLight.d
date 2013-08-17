module UnrealScript.UTGame.UTStingerMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTStingerMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTStingerMuzzleFlashLight")()); }
	private static __gshared UTStingerMuzzleFlashLight mDefaultProperties;
	@property final static UTStingerMuzzleFlashLight DefaultProperties() { mixin(MGDPC!(UTStingerMuzzleFlashLight, "UTStingerMuzzleFlashLight UTGame.Default__UTStingerMuzzleFlashLight")()); }
}

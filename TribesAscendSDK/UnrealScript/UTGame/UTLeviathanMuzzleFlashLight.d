module UnrealScript.UTGame.UTLeviathanMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTLeviathanMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTLeviathanMuzzleFlashLight")()); }
	private static __gshared UTLeviathanMuzzleFlashLight mDefaultProperties;
	@property final static UTLeviathanMuzzleFlashLight DefaultProperties() { mixin(MGDPC!(UTLeviathanMuzzleFlashLight, "UTLeviathanMuzzleFlashLight UTGame.Default__UTLeviathanMuzzleFlashLight")()); }
}

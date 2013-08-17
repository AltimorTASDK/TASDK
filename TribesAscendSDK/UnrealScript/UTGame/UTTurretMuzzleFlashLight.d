module UnrealScript.UTGame.UTTurretMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTTurretMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTurretMuzzleFlashLight")()); }
	private static __gshared UTTurretMuzzleFlashLight mDefaultProperties;
	@property final static UTTurretMuzzleFlashLight DefaultProperties() { mixin(MGDPC!(UTTurretMuzzleFlashLight, "UTTurretMuzzleFlashLight UTGame.Default__UTTurretMuzzleFlashLight")()); }
}

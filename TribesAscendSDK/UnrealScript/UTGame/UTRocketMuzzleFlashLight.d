module UnrealScript.UTGame.UTRocketMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTRocketMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTRocketMuzzleFlashLight")); }
	private static __gshared UTRocketMuzzleFlashLight mDefaultProperties;
	@property final static UTRocketMuzzleFlashLight DefaultProperties() { mixin(MGDPC("UTRocketMuzzleFlashLight", "UTRocketMuzzleFlashLight UTGame.Default__UTRocketMuzzleFlashLight")); }
}

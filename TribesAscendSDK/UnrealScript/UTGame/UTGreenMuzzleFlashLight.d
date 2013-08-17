module UnrealScript.UTGame.UTGreenMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTGreenMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGreenMuzzleFlashLight")); }
	private static __gshared UTGreenMuzzleFlashLight mDefaultProperties;
	@property final static UTGreenMuzzleFlashLight DefaultProperties() { mixin(MGDPC("UTGreenMuzzleFlashLight", "UTGreenMuzzleFlashLight UTGame.Default__UTGreenMuzzleFlashLight")); }
}

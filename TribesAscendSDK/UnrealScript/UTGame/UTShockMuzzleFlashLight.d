module UnrealScript.UTGame.UTShockMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTShockMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTShockMuzzleFlashLight")); }
	private static __gshared UTShockMuzzleFlashLight mDefaultProperties;
	@property final static UTShockMuzzleFlashLight DefaultProperties() { mixin(MGDPC("UTShockMuzzleFlashLight", "UTShockMuzzleFlashLight UTGame.Default__UTShockMuzzleFlashLight")); }
}

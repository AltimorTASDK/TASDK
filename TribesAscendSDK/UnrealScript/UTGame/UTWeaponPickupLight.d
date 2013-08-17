module UnrealScript.UTGame.UTWeaponPickupLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface UTWeaponPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTWeaponPickupLight")); }
	private static __gshared UTWeaponPickupLight mDefaultProperties;
	@property final static UTWeaponPickupLight DefaultProperties() { mixin(MGDPC("UTWeaponPickupLight", "UTWeaponPickupLight UTGame.Default__UTWeaponPickupLight")); }
}

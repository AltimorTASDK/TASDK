module UnrealScript.UTGame.UTWeaponLockerPickupLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface UTWeaponLockerPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTWeaponLockerPickupLight")); }
	private static __gshared UTWeaponLockerPickupLight mDefaultProperties;
	@property final static UTWeaponLockerPickupLight DefaultProperties() { mixin(MGDPC("UTWeaponLockerPickupLight", "UTWeaponLockerPickupLight UTGame.Default__UTWeaponLockerPickupLight")); }
}

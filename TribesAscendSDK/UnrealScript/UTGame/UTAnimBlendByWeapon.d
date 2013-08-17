module UnrealScript.UTGame.UTAnimBlendByWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByWeapon;

extern(C++) interface UTAnimBlendByWeapon : UDKAnimBlendByWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByWeapon")); }
	private static __gshared UTAnimBlendByWeapon mDefaultProperties;
	@property final static UTAnimBlendByWeapon DefaultProperties() { mixin(MGDPC("UTAnimBlendByWeapon", "UTAnimBlendByWeapon UTGame.Default__UTAnimBlendByWeapon")); }
}

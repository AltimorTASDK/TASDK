module UnrealScript.UDKBase.UDKWeaponShield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKWeaponShield : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKWeaponShield")()); }
	private static __gshared UDKWeaponShield mDefaultProperties;
	@property final static UDKWeaponShield DefaultProperties() { mixin(MGDPC!(UDKWeaponShield, "UDKWeaponShield UDKBase.Default__UDKWeaponShield")()); }
	@property final
	{
		bool bIgnoreFlaggedProjectiles() { mixin(MGBPC!(476, 0x1)()); }
		bool bIgnoreFlaggedProjectiles(bool val) { mixin(MSBPC!(476, 0x1)()); }
	}
}

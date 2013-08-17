module UnrealScript.UTGame.UTWeaponKillMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;

extern(C++) interface UTWeaponKillMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTWeaponKillMessage")()); }
	private static __gshared UTWeaponKillMessage mDefaultProperties;
	@property final static UTWeaponKillMessage DefaultProperties() { mixin(MGDPC!(UTWeaponKillMessage, "UTWeaponKillMessage UTGame.Default__UTWeaponKillMessage")()); }
}

module UnrealScript.UTGame.UTArmorPickupLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface UTArmorPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTArmorPickupLight")()); }
	private static __gshared UTArmorPickupLight mDefaultProperties;
	@property final static UTArmorPickupLight DefaultProperties() { mixin(MGDPC!(UTArmorPickupLight, "UTArmorPickupLight UTGame.Default__UTArmorPickupLight")()); }
}

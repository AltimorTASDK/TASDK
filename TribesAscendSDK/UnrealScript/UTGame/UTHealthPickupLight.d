module UnrealScript.UTGame.UTHealthPickupLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Light;

extern(C++) interface UTHealthPickupLight : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTHealthPickupLight")); }
	private static __gshared UTHealthPickupLight mDefaultProperties;
	@property final static UTHealthPickupLight DefaultProperties() { mixin(MGDPC("UTHealthPickupLight", "UTHealthPickupLight UTGame.Default__UTHealthPickupLight")); }
}

module UnrealScript.UTGame.UTVehicleCTFHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTCTFHUD;

extern(C++) interface UTVehicleCTFHUD : UTCTFHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTVehicleCTFHUD")); }
	private static __gshared UTVehicleCTFHUD mDefaultProperties;
	@property final static UTVehicleCTFHUD DefaultProperties() { mixin(MGDPC("UTVehicleCTFHUD", "UTVehicleCTFHUD UTGame.Default__UTVehicleCTFHUD")); }
}

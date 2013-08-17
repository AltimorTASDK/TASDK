module UnrealScript.UTGame.UTHoverWheel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicleWheel;

extern(C++) interface UTHoverWheel : UDKVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTHoverWheel")); }
	private static __gshared UTHoverWheel mDefaultProperties;
	@property final static UTHoverWheel DefaultProperties() { mixin(MGDPC("UTHoverWheel", "UTHoverWheel UTGame.Default__UTHoverWheel")); }
}

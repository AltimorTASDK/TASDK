module UnrealScript.UTGame.UTAnimBlendByVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByVehicle;

extern(C++) interface UTAnimBlendByVehicle : UDKAnimBlendByVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimBlendByVehicle")); }
	private static __gshared UTAnimBlendByVehicle mDefaultProperties;
	@property final static UTAnimBlendByVehicle DefaultProperties() { mixin(MGDPC("UTAnimBlendByVehicle", "UTAnimBlendByVehicle UTGame.Default__UTAnimBlendByVehicle")); }
}

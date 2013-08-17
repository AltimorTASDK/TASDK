module UnrealScript.UTGame.UTVehicleScorpionWheel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicleWheel;

extern(C++) interface UTVehicleScorpionWheel : UDKVehicleWheel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVehicleScorpionWheel")()); }
	private static __gshared UTVehicleScorpionWheel mDefaultProperties;
	@property final static UTVehicleScorpionWheel DefaultProperties() { mixin(MGDPC!(UTVehicleScorpionWheel, "UTVehicleScorpionWheel UTGame.Default__UTVehicleScorpionWheel")()); }
}

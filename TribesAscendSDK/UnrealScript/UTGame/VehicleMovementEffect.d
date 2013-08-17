module UnrealScript.UTGame.VehicleMovementEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicleMovementEffect;

extern(C++) interface VehicleMovementEffect : UDKVehicleMovementEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.VehicleMovementEffect")()); }
	private static __gshared VehicleMovementEffect mDefaultProperties;
	@property final static VehicleMovementEffect DefaultProperties() { mixin(MGDPC!(VehicleMovementEffect, "VehicleMovementEffect UTGame.Default__VehicleMovementEffect")()); }
}

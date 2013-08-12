module UnrealScript.UTGame.VehicleMovementEffect;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicleMovementEffect;

extern(C++) interface VehicleMovementEffect : UDKVehicleMovementEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.VehicleMovementEffect")); }
	private static __gshared VehicleMovementEffect mDefaultProperties;
	@property final static VehicleMovementEffect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(VehicleMovementEffect)("VehicleMovementEffect UTGame.Default__VehicleMovementEffect")); }
}

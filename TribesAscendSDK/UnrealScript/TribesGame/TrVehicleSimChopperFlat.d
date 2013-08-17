module UnrealScript.TribesGame.TrVehicleSimChopperFlat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVehicleSimChopper;

extern(C++) interface TrVehicleSimChopperFlat : TrVehicleSimChopper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleSimChopperFlat")()); }
	private static __gshared TrVehicleSimChopperFlat mDefaultProperties;
	@property final static TrVehicleSimChopperFlat DefaultProperties() { mixin(MGDPC!(TrVehicleSimChopperFlat, "TrVehicleSimChopperFlat TribesGame.Default__TrVehicleSimChopperFlat")()); }
}

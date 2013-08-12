module UnrealScript.TribesGame.TrVehicleSimChopperFlat;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleSimChopper;

extern(C++) interface TrVehicleSimChopperFlat : TrVehicleSimChopper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleSimChopperFlat")); }
	private static __gshared TrVehicleSimChopperFlat mDefaultProperties;
	@property final static TrVehicleSimChopperFlat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleSimChopperFlat)("TrVehicleSimChopperFlat TribesGame.Default__TrVehicleSimChopperFlat")); }
}

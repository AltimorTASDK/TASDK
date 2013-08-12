module UnrealScript.TribesGame.TrVehicleSimChopperFlat;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleSimChopper;

extern(C++) interface TrVehicleSimChopperFlat : TrVehicleSimChopper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleSimChopperFlat")); }
}

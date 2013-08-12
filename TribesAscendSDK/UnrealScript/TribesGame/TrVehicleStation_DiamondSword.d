module UnrealScript.TribesGame.TrVehicleStation_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicleStation;

extern(C++) interface TrVehicleStation_DiamondSword : TrVehicleStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleStation_DiamondSword")); }
}

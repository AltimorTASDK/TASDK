module UnrealScript.TribesGame.TrVehicle_HERC;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_Tank;

extern(C++) interface TrVehicle_HERC : TrVehicle_Tank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_HERC")); }
}

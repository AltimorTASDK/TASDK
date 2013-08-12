module UnrealScript.TribesGame.TrVehicle_Beowulf;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_Tank;

extern(C++) interface TrVehicle_Beowulf : TrVehicle_Tank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_Beowulf")); }
}

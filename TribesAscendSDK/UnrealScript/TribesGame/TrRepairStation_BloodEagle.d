module UnrealScript.TribesGame.TrRepairStation_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrRepairStation;

extern(C++) interface TrRepairStation_BloodEagle : TrRepairStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRepairStation_BloodEagle")); }
}

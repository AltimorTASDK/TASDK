module UnrealScript.TribesGame.TrRepairStation_Neutral;

import ScriptClasses;
import UnrealScript.TribesGame.TrRepairStation;

extern(C++) interface TrRepairStation_Neutral : TrRepairStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRepairStation_Neutral")); }
}

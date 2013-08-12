module UnrealScript.TribesGame.TrRepairStation_Neutral;

import ScriptClasses;
import UnrealScript.TribesGame.TrRepairStation;

extern(C++) interface TrRepairStation_Neutral : TrRepairStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRepairStation_Neutral")); }
	private static __gshared TrRepairStation_Neutral mDefaultProperties;
	@property final static TrRepairStation_Neutral DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRepairStation_Neutral)("TrRepairStation_Neutral TribesGame.Default__TrRepairStation_Neutral")); }
}

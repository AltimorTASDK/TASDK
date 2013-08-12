module UnrealScript.TribesGame.TrRepairStation_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrRepairStation;

extern(C++) interface TrRepairStation_BloodEagle : TrRepairStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRepairStation_BloodEagle")); }
	private static __gshared TrRepairStation_BloodEagle mDefaultProperties;
	@property final static TrRepairStation_BloodEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRepairStation_BloodEagle)("TrRepairStation_BloodEagle TribesGame.Default__TrRepairStation_BloodEagle")); }
}

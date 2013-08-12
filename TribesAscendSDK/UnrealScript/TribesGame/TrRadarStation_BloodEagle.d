module UnrealScript.TribesGame.TrRadarStation_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_BloodEagle : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRadarStation_BloodEagle")); }
	private static __gshared TrRadarStation_BloodEagle mDefaultProperties;
	@property final static TrRadarStation_BloodEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRadarStation_BloodEagle)("TrRadarStation_BloodEagle TribesGame.Default__TrRadarStation_BloodEagle")); }
}

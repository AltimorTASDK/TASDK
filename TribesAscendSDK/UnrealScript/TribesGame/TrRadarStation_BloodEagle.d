module UnrealScript.TribesGame.TrRadarStation_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_BloodEagle : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRadarStation_BloodEagle")); }
	private static __gshared TrRadarStation_BloodEagle mDefaultProperties;
	@property final static TrRadarStation_BloodEagle DefaultProperties() { mixin(MGDPC("TrRadarStation_BloodEagle", "TrRadarStation_BloodEagle TribesGame.Default__TrRadarStation_BloodEagle")); }
}

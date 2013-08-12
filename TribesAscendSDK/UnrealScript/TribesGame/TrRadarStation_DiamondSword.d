module UnrealScript.TribesGame.TrRadarStation_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_DiamondSword : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRadarStation_DiamondSword")); }
	private static __gshared TrRadarStation_DiamondSword mDefaultProperties;
	@property final static TrRadarStation_DiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRadarStation_DiamondSword)("TrRadarStation_DiamondSword TribesGame.Default__TrRadarStation_DiamondSword")); }
}

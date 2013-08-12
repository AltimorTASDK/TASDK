module UnrealScript.TribesGame.TrRadarStation_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_DiamondSword : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRadarStation_DiamondSword")); }
}

module UnrealScript.TribesGame.TrRadarStation_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_DiamondSword : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRadarStation_DiamondSword")); }
	private static __gshared TrRadarStation_DiamondSword mDefaultProperties;
	@property final static TrRadarStation_DiamondSword DefaultProperties() { mixin(MGDPC("TrRadarStation_DiamondSword", "TrRadarStation_DiamondSword TribesGame.Default__TrRadarStation_DiamondSword")); }
}

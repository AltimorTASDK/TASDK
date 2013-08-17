module UnrealScript.TribesGame.TrRepairStation_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRepairStation;

extern(C++) interface TrRepairStation_DiamondSword : TrRepairStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRepairStation_DiamondSword")); }
	private static __gshared TrRepairStation_DiamondSword mDefaultProperties;
	@property final static TrRepairStation_DiamondSword DefaultProperties() { mixin(MGDPC("TrRepairStation_DiamondSword", "TrRepairStation_DiamondSword TribesGame.Default__TrRepairStation_DiamondSword")); }
}

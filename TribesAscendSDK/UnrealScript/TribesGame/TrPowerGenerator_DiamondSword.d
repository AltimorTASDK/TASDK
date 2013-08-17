module UnrealScript.TribesGame.TrPowerGenerator_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPowerGenerator;

extern(C++) interface TrPowerGenerator_DiamondSword : TrPowerGenerator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPowerGenerator_DiamondSword")); }
	private static __gshared TrPowerGenerator_DiamondSword mDefaultProperties;
	@property final static TrPowerGenerator_DiamondSword DefaultProperties() { mixin(MGDPC("TrPowerGenerator_DiamondSword", "TrPowerGenerator_DiamondSword TribesGame.Default__TrPowerGenerator_DiamondSword")); }
}

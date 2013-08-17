module UnrealScript.TribesGame.TrStormCore_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrStormCore_DiamondSword : TrStormCore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrStormCore_DiamondSword")); }
	private static __gshared TrStormCore_DiamondSword mDefaultProperties;
	@property final static TrStormCore_DiamondSword DefaultProperties() { mixin(MGDPC("TrStormCore_DiamondSword", "TrStormCore_DiamondSword TribesGame.Default__TrStormCore_DiamondSword")); }
}

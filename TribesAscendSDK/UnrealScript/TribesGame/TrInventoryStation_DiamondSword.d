module UnrealScript.TribesGame.TrInventoryStation_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_DiamondSword : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrInventoryStation_DiamondSword")); }
	private static __gshared TrInventoryStation_DiamondSword mDefaultProperties;
	@property final static TrInventoryStation_DiamondSword DefaultProperties() { mixin(MGDPC("TrInventoryStation_DiamondSword", "TrInventoryStation_DiamondSword TribesGame.Default__TrInventoryStation_DiamondSword")); }
}

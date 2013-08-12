module UnrealScript.TribesGame.TrStormCore_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrStormCore_DiamondSword : TrStormCore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStormCore_DiamondSword")); }
	private static __gshared TrStormCore_DiamondSword mDefaultProperties;
	@property final static TrStormCore_DiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrStormCore_DiamondSword)("TrStormCore_DiamondSword TribesGame.Default__TrStormCore_DiamondSword")); }
}

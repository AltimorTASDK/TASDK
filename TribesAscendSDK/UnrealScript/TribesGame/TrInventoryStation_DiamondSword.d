module UnrealScript.TribesGame.TrInventoryStation_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_DiamondSword : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryStation_DiamondSword")); }
	private static __gshared TrInventoryStation_DiamondSword mDefaultProperties;
	@property final static TrInventoryStation_DiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrInventoryStation_DiamondSword)("TrInventoryStation_DiamondSword TribesGame.Default__TrInventoryStation_DiamondSword")); }
}

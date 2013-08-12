module UnrealScript.TribesGame.TrPowerGenerator_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrPowerGenerator;

extern(C++) interface TrPowerGenerator_DiamondSword : TrPowerGenerator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPowerGenerator_DiamondSword")); }
}

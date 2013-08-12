module UnrealScript.TribesGame.TrBaseTurret_DiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;

extern(C++) interface TrBaseTurret_DiamondSword : TrDeployable_BaseTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBaseTurret_DiamondSword")); }
	private static __gshared TrBaseTurret_DiamondSword mDefaultProperties;
	@property final static TrBaseTurret_DiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBaseTurret_DiamondSword)("TrBaseTurret_DiamondSword TribesGame.Default__TrBaseTurret_DiamondSword")); }
}

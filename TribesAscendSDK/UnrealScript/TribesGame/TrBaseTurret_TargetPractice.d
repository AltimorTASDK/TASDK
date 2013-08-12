module UnrealScript.TribesGame.TrBaseTurret_TargetPractice;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;

extern(C++) interface TrBaseTurret_TargetPractice : TrDeployable_BaseTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBaseTurret_TargetPractice")); }
	private static __gshared TrBaseTurret_TargetPractice mDefaultProperties;
	@property final static TrBaseTurret_TargetPractice DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBaseTurret_TargetPractice)("TrBaseTurret_TargetPractice TribesGame.Default__TrBaseTurret_TargetPractice")); }
}

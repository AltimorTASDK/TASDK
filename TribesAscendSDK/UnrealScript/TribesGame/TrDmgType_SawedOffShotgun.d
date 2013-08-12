module UnrealScript.TribesGame.TrDmgType_SawedOffShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SawedOffShotgun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SawedOffShotgun")); }
	private static __gshared TrDmgType_SawedOffShotgun mDefaultProperties;
	@property final static TrDmgType_SawedOffShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SawedOffShotgun)("TrDmgType_SawedOffShotgun TribesGame.Default__TrDmgType_SawedOffShotgun")); }
}

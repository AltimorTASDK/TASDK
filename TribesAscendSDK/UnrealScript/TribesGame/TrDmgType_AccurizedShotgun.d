module UnrealScript.TribesGame.TrDmgType_AccurizedShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AccurizedShotgun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_AccurizedShotgun")); }
	private static __gshared TrDmgType_AccurizedShotgun mDefaultProperties;
	@property final static TrDmgType_AccurizedShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_AccurizedShotgun)("TrDmgType_AccurizedShotgun TribesGame.Default__TrDmgType_AccurizedShotgun")); }
}

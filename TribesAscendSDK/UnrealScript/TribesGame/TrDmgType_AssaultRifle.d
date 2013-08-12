module UnrealScript.TribesGame.TrDmgType_AssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AssaultRifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_AssaultRifle")); }
	private static __gshared TrDmgType_AssaultRifle mDefaultProperties;
	@property final static TrDmgType_AssaultRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_AssaultRifle)("TrDmgType_AssaultRifle TribesGame.Default__TrDmgType_AssaultRifle")); }
}

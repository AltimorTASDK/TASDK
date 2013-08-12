module UnrealScript.TribesGame.TrDmgType_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AssaultRifle_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_AssaultRifle_MKD")); }
	private static __gshared TrDmgType_AssaultRifle_MKD mDefaultProperties;
	@property final static TrDmgType_AssaultRifle_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_AssaultRifle_MKD)("TrDmgType_AssaultRifle_MKD TribesGame.Default__TrDmgType_AssaultRifle_MKD")); }
}

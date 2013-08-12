module UnrealScript.TribesGame.TrDmgType_AutoShotgun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AutoShotgun_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_AutoShotgun_MKD")); }
	private static __gshared TrDmgType_AutoShotgun_MKD mDefaultProperties;
	@property final static TrDmgType_AutoShotgun_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_AutoShotgun_MKD)("TrDmgType_AutoShotgun_MKD TribesGame.Default__TrDmgType_AutoShotgun_MKD")); }
}

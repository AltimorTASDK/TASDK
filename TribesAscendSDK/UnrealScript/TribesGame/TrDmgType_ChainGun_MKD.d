module UnrealScript.TribesGame.TrDmgType_ChainGun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ChainGun_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ChainGun_MKD")); }
	private static __gshared TrDmgType_ChainGun_MKD mDefaultProperties;
	@property final static TrDmgType_ChainGun_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ChainGun_MKD)("TrDmgType_ChainGun_MKD TribesGame.Default__TrDmgType_ChainGun_MKD")); }
}

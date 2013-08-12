module UnrealScript.TribesGame.TrDmgType_ChainGun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ChainGun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ChainGun")); }
	private static __gshared TrDmgType_ChainGun mDefaultProperties;
	@property final static TrDmgType_ChainGun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ChainGun)("TrDmgType_ChainGun TribesGame.Default__TrDmgType_ChainGun")); }
}

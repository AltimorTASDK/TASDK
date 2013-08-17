module UnrealScript.TribesGame.TrDmgType_ChainGun_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ChainGun_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_ChainGun_MKD")()); }
	private static __gshared TrDmgType_ChainGun_MKD mDefaultProperties;
	@property final static TrDmgType_ChainGun_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_ChainGun_MKD, "TrDmgType_ChainGun_MKD TribesGame.Default__TrDmgType_ChainGun_MKD")()); }
}

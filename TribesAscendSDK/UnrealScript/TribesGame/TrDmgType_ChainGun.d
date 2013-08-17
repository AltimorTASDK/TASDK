module UnrealScript.TribesGame.TrDmgType_ChainGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ChainGun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ChainGun")); }
	private static __gshared TrDmgType_ChainGun mDefaultProperties;
	@property final static TrDmgType_ChainGun DefaultProperties() { mixin(MGDPC("TrDmgType_ChainGun", "TrDmgType_ChainGun TribesGame.Default__TrDmgType_ChainGun")); }
}

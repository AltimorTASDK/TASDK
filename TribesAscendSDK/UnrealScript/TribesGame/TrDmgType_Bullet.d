module UnrealScript.TribesGame.TrDmgType_Bullet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Bullet : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Bullet")()); }
	private static __gshared TrDmgType_Bullet mDefaultProperties;
	@property final static TrDmgType_Bullet DefaultProperties() { mixin(MGDPC!(TrDmgType_Bullet, "TrDmgType_Bullet TribesGame.Default__TrDmgType_Bullet")()); }
}

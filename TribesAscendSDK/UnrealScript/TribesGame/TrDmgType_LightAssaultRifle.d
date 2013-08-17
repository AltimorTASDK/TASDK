module UnrealScript.TribesGame.TrDmgType_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_LightAssaultRifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_LightAssaultRifle")()); }
	private static __gshared TrDmgType_LightAssaultRifle mDefaultProperties;
	@property final static TrDmgType_LightAssaultRifle DefaultProperties() { mixin(MGDPC!(TrDmgType_LightAssaultRifle, "TrDmgType_LightAssaultRifle TribesGame.Default__TrDmgType_LightAssaultRifle")()); }
}

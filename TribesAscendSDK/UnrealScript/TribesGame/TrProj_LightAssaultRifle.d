module UnrealScript.TribesGame.TrProj_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_LightAssaultRifle : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_LightAssaultRifle")()); }
	private static __gshared TrProj_LightAssaultRifle mDefaultProperties;
	@property final static TrProj_LightAssaultRifle DefaultProperties() { mixin(MGDPC!(TrProj_LightAssaultRifle, "TrProj_LightAssaultRifle TribesGame.Default__TrProj_LightAssaultRifle")()); }
}

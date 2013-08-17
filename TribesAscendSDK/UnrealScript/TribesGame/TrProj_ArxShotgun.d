module UnrealScript.TribesGame.TrProj_ArxShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ArxShotgun : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ArxShotgun")()); }
	private static __gshared TrProj_ArxShotgun mDefaultProperties;
	@property final static TrProj_ArxShotgun DefaultProperties() { mixin(MGDPC!(TrProj_ArxShotgun, "TrProj_ArxShotgun TribesGame.Default__TrProj_ArxShotgun")()); }
}

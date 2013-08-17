module UnrealScript.TribesGame.TrProj_ImpactBomblets;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ImpactBomblets : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ImpactBomblets")()); }
	private static __gshared TrProj_ImpactBomblets mDefaultProperties;
	@property final static TrProj_ImpactBomblets DefaultProperties() { mixin(MGDPC!(TrProj_ImpactBomblets, "TrProj_ImpactBomblets TribesGame.Default__TrProj_ImpactBomblets")()); }
}

module UnrealScript.TribesGame.TrProj_HERCGunner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HERCGunner : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_HERCGunner")()); }
	private static __gshared TrProj_HERCGunner mDefaultProperties;
	@property final static TrProj_HERCGunner DefaultProperties() { mixin(MGDPC!(TrProj_HERCGunner, "TrProj_HERCGunner TribesGame.Default__TrProj_HERCGunner")()); }
}

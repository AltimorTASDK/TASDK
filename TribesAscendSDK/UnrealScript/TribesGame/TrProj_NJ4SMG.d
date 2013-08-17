module UnrealScript.TribesGame.TrProj_NJ4SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_NJ4SMG : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_NJ4SMG")()); }
	private static __gshared TrProj_NJ4SMG mDefaultProperties;
	@property final static TrProj_NJ4SMG DefaultProperties() { mixin(MGDPC!(TrProj_NJ4SMG, "TrProj_NJ4SMG TribesGame.Default__TrProj_NJ4SMG")()); }
}

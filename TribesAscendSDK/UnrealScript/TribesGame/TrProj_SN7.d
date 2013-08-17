module UnrealScript.TribesGame.TrProj_SN7;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_SN7 : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_SN7")()); }
	private static __gshared TrProj_SN7 mDefaultProperties;
	@property final static TrProj_SN7 DefaultProperties() { mixin(MGDPC!(TrProj_SN7, "TrProj_SN7 TribesGame.Default__TrProj_SN7")()); }
}

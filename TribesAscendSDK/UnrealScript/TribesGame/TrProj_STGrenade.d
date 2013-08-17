module UnrealScript.TribesGame.TrProj_STGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_STGrenade : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_STGrenade")()); }
	private static __gshared TrProj_STGrenade mDefaultProperties;
	@property final static TrProj_STGrenade DefaultProperties() { mixin(MGDPC!(TrProj_STGrenade, "TrProj_STGrenade TribesGame.Default__TrProj_STGrenade")()); }
}

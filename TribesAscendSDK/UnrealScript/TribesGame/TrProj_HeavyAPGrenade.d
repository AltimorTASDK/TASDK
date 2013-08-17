module UnrealScript.TribesGame.TrProj_HeavyAPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_HeavyAPGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_HeavyAPGrenade")()); }
	private static __gshared TrProj_HeavyAPGrenade mDefaultProperties;
	@property final static TrProj_HeavyAPGrenade DefaultProperties() { mixin(MGDPC!(TrProj_HeavyAPGrenade, "TrProj_HeavyAPGrenade TribesGame.Default__TrProj_HeavyAPGrenade")()); }
}

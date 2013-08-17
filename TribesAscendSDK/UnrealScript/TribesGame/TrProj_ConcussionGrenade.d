module UnrealScript.TribesGame.TrProj_ConcussionGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ConcussionGrenade : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ConcussionGrenade")()); }
	private static __gshared TrProj_ConcussionGrenade mDefaultProperties;
	@property final static TrProj_ConcussionGrenade DefaultProperties() { mixin(MGDPC!(TrProj_ConcussionGrenade, "TrProj_ConcussionGrenade TribesGame.Default__TrProj_ConcussionGrenade")()); }
}

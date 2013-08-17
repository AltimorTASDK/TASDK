module UnrealScript.TribesGame.TrDevice_ConcussionGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_ConcussionGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ConcussionGrenade")()); }
	private static __gshared TrDevice_ConcussionGrenade mDefaultProperties;
	@property final static TrDevice_ConcussionGrenade DefaultProperties() { mixin(MGDPC!(TrDevice_ConcussionGrenade, "TrDevice_ConcussionGrenade TribesGame.Default__TrDevice_ConcussionGrenade")()); }
}

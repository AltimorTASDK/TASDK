module UnrealScript.TribesGame.TrDmgType_ConcussionGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ConcussionGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_ConcussionGrenade")()); }
	private static __gshared TrDmgType_ConcussionGrenade mDefaultProperties;
	@property final static TrDmgType_ConcussionGrenade DefaultProperties() { mixin(MGDPC!(TrDmgType_ConcussionGrenade, "TrDmgType_ConcussionGrenade TribesGame.Default__TrDmgType_ConcussionGrenade")()); }
}

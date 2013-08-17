module UnrealScript.TribesGame.TrDmgType_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_ConcussionGrenade;

extern(C++) interface TrDmgType_ConcussionGrenade_MKD : TrDmgType_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ConcussionGrenade_MKD")); }
	private static __gshared TrDmgType_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_ConcussionGrenade_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_ConcussionGrenade_MKD", "TrDmgType_ConcussionGrenade_MKD TribesGame.Default__TrDmgType_ConcussionGrenade_MKD")); }
}

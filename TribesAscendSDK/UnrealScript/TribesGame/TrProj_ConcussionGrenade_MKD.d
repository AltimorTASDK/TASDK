module UnrealScript.TribesGame.TrProj_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_ConcussionGrenade;

extern(C++) interface TrProj_ConcussionGrenade_MKD : TrProj_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ConcussionGrenade_MKD")); }
	private static __gshared TrProj_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrProj_ConcussionGrenade_MKD DefaultProperties() { mixin(MGDPC("TrProj_ConcussionGrenade_MKD", "TrProj_ConcussionGrenade_MKD TribesGame.Default__TrProj_ConcussionGrenade_MKD")); }
}

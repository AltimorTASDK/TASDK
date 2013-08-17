module UnrealScript.TribesGame.TrDevice_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConcussionGrenade;

extern(C++) interface TrDevice_ConcussionGrenade_MKD : TrDevice_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_ConcussionGrenade_MKD")); }
	private static __gshared TrDevice_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrDevice_ConcussionGrenade_MKD DefaultProperties() { mixin(MGDPC("TrDevice_ConcussionGrenade_MKD", "TrDevice_ConcussionGrenade_MKD TribesGame.Default__TrDevice_ConcussionGrenade_MKD")); }
}

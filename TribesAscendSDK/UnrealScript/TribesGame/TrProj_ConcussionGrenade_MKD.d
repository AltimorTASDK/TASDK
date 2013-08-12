module UnrealScript.TribesGame.TrProj_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_ConcussionGrenade;

extern(C++) interface TrProj_ConcussionGrenade_MKD : TrProj_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ConcussionGrenade_MKD")); }
	private static __gshared TrProj_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrProj_ConcussionGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ConcussionGrenade_MKD)("TrProj_ConcussionGrenade_MKD TribesGame.Default__TrProj_ConcussionGrenade_MKD")); }
}

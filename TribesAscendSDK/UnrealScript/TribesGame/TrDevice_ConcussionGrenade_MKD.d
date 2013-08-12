module UnrealScript.TribesGame.TrDevice_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConcussionGrenade;

extern(C++) interface TrDevice_ConcussionGrenade_MKD : TrDevice_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ConcussionGrenade_MKD")); }
	private static __gshared TrDevice_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrDevice_ConcussionGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ConcussionGrenade_MKD)("TrDevice_ConcussionGrenade_MKD TribesGame.Default__TrDevice_ConcussionGrenade_MKD")); }
}

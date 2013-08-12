module UnrealScript.TribesGame.TrDevice_ConcussionGrenade_Blank;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_ConcussionGrenade_Blank : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ConcussionGrenade_Blank")); }
	private static __gshared TrDevice_ConcussionGrenade_Blank mDefaultProperties;
	@property final static TrDevice_ConcussionGrenade_Blank DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ConcussionGrenade_Blank)("TrDevice_ConcussionGrenade_Blank TribesGame.Default__TrDevice_ConcussionGrenade_Blank")); }
}

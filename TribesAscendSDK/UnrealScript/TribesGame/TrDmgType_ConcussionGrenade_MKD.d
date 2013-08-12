module UnrealScript.TribesGame.TrDmgType_ConcussionGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_ConcussionGrenade;

extern(C++) interface TrDmgType_ConcussionGrenade_MKD : TrDmgType_ConcussionGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ConcussionGrenade_MKD")); }
	private static __gshared TrDmgType_ConcussionGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_ConcussionGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ConcussionGrenade_MKD)("TrDmgType_ConcussionGrenade_MKD TribesGame.Default__TrDmgType_ConcussionGrenade_MKD")); }
}

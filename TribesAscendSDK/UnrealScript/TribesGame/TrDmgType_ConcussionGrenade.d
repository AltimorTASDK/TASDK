module UnrealScript.TribesGame.TrDmgType_ConcussionGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ConcussionGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ConcussionGrenade")); }
	private static __gshared TrDmgType_ConcussionGrenade mDefaultProperties;
	@property final static TrDmgType_ConcussionGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ConcussionGrenade)("TrDmgType_ConcussionGrenade TribesGame.Default__TrDmgType_ConcussionGrenade")); }
}

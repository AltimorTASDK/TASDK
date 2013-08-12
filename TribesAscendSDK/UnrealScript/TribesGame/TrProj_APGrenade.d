module UnrealScript.TribesGame.TrProj_APGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_APGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_APGrenade")); }
	private static __gshared TrProj_APGrenade mDefaultProperties;
	@property final static TrProj_APGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_APGrenade)("TrProj_APGrenade TribesGame.Default__TrProj_APGrenade")); }
}

module UnrealScript.TribesGame.TrProj_EMPGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_EMPGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_EMPGrenade")); }
	private static __gshared TrProj_EMPGrenade mDefaultProperties;
	@property final static TrProj_EMPGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_EMPGrenade)("TrProj_EMPGrenade TribesGame.Default__TrProj_EMPGrenade")); }
}

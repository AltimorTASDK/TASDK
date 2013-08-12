module UnrealScript.TribesGame.TrDevice_EMPGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_EMPGrenade;

extern(C++) interface TrDevice_EMPGrenade_MKD : TrDevice_EMPGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_EMPGrenade_MKD")); }
}

module UnrealScript.TribesGame.TrDevice_HeavyAPGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_HeavyAPGrenade;

extern(C++) interface TrDevice_HeavyAPGrenade_MKD : TrDevice_HeavyAPGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HeavyAPGrenade_MKD")); }
}

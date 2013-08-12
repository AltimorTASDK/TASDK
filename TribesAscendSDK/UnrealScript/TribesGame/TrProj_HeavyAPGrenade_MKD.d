module UnrealScript.TribesGame.TrProj_HeavyAPGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_HeavyAPGrenade;

extern(C++) interface TrProj_HeavyAPGrenade_MKD : TrProj_HeavyAPGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavyAPGrenade_MKD")); }
}

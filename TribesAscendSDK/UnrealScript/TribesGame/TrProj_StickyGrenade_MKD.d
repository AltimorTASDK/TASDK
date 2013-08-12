module UnrealScript.TribesGame.TrProj_StickyGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_StickyGrenade;

extern(C++) interface TrProj_StickyGrenade_MKD : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_StickyGrenade_MKD")); }
}

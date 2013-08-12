module UnrealScript.TribesGame.TrProj_GrenadeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_GrenadeLauncher : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_GrenadeLauncher")); }
}

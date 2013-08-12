module UnrealScript.TribesGame.TrProj_GrenadeT5;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_GrenadeT5 : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_GrenadeT5")); }
}

module UnrealScript.TribesGame.TrProj_HeavyBoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyBoltLauncher : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavyBoltLauncher")); }
}

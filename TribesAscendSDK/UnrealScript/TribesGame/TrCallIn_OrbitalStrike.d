module UnrealScript.TribesGame.TrCallIn_OrbitalStrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn_Projectile;

extern(C++) interface TrCallIn_OrbitalStrike : TrCallIn_Projectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_OrbitalStrike")); }
}

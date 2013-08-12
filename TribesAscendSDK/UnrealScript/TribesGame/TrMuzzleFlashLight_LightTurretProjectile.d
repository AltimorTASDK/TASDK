module UnrealScript.TribesGame.TrMuzzleFlashLight_LightTurretProjectile;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_LightTurretProjectile : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_LightTurretProjectile")); }
}

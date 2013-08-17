module UnrealScript.TribesGame.TrMuzzleFlashLight_BaseTurretProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_BaseTurretProjectile : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMuzzleFlashLight_BaseTurretProjectile")()); }
	private static __gshared TrMuzzleFlashLight_BaseTurretProjectile mDefaultProperties;
	@property final static TrMuzzleFlashLight_BaseTurretProjectile DefaultProperties() { mixin(MGDPC!(TrMuzzleFlashLight_BaseTurretProjectile, "TrMuzzleFlashLight_BaseTurretProjectile TribesGame.Default__TrMuzzleFlashLight_BaseTurretProjectile")()); }
}

module UnrealScript.TribesGame.TrMuzzleFlashLight_LightTurretProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_LightTurretProjectile : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMuzzleFlashLight_LightTurretProjectile")()); }
	private static __gshared TrMuzzleFlashLight_LightTurretProjectile mDefaultProperties;
	@property final static TrMuzzleFlashLight_LightTurretProjectile DefaultProperties() { mixin(MGDPC!(TrMuzzleFlashLight_LightTurretProjectile, "TrMuzzleFlashLight_LightTurretProjectile TribesGame.Default__TrMuzzleFlashLight_LightTurretProjectile")()); }
}

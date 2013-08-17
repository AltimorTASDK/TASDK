module UnrealScript.TribesGame.TrExplosionLight_LightTurretProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_LightTurretProjectile : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrExplosionLight_LightTurretProjectile")); }
	private static __gshared TrExplosionLight_LightTurretProjectile mDefaultProperties;
	@property final static TrExplosionLight_LightTurretProjectile DefaultProperties() { mixin(MGDPC("TrExplosionLight_LightTurretProjectile", "TrExplosionLight_LightTurretProjectile TribesGame.Default__TrExplosionLight_LightTurretProjectile")); }
}

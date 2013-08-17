module UnrealScript.TribesGame.TrExplosionLight_BaseTurretProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_BaseTurretProjectile : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrExplosionLight_BaseTurretProjectile")()); }
	private static __gshared TrExplosionLight_BaseTurretProjectile mDefaultProperties;
	@property final static TrExplosionLight_BaseTurretProjectile DefaultProperties() { mixin(MGDPC!(TrExplosionLight_BaseTurretProjectile, "TrExplosionLight_BaseTurretProjectile TribesGame.Default__TrExplosionLight_BaseTurretProjectile")()); }
}

module UnrealScript.TribesGame.TrExplosionLight_LightTurretProjectile;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_LightTurretProjectile : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrExplosionLight_LightTurretProjectile")); }
	private static __gshared TrExplosionLight_LightTurretProjectile mDefaultProperties;
	@property final static TrExplosionLight_LightTurretProjectile DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrExplosionLight_LightTurretProjectile)("TrExplosionLight_LightTurretProjectile TribesGame.Default__TrExplosionLight_LightTurretProjectile")); }
}

module UnrealScript.UTGame.UTTurretMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTTurretMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTurretMuzzleFlashLight")); }
	private static __gshared UTTurretMuzzleFlashLight mDefaultProperties;
	@property final static UTTurretMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTurretMuzzleFlashLight)("UTTurretMuzzleFlashLight UTGame.Default__UTTurretMuzzleFlashLight")); }
}

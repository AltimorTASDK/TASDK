module UnrealScript.UTGame.UTShockMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTShockMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTShockMuzzleFlashLight")); }
	private static __gshared UTShockMuzzleFlashLight mDefaultProperties;
	@property final static UTShockMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTShockMuzzleFlashLight)("UTShockMuzzleFlashLight UTGame.Default__UTShockMuzzleFlashLight")); }
}

module UnrealScript.UTGame.UTGreenMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTGreenMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGreenMuzzleFlashLight")); }
	private static __gshared UTGreenMuzzleFlashLight mDefaultProperties;
	@property final static UTGreenMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGreenMuzzleFlashLight)("UTGreenMuzzleFlashLight UTGame.Default__UTGreenMuzzleFlashLight")); }
}

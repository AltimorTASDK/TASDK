module UnrealScript.UTGame.UTRocketMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTRocketMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTRocketMuzzleFlashLight")); }
	private static __gshared UTRocketMuzzleFlashLight mDefaultProperties;
	@property final static UTRocketMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTRocketMuzzleFlashLight)("UTRocketMuzzleFlashLight UTGame.Default__UTRocketMuzzleFlashLight")); }
}

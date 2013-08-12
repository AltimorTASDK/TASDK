module UnrealScript.UTGame.UTLeviathanMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTLeviathanMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTLeviathanMuzzleFlashLight")); }
}

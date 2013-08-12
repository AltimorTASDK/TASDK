module UnrealScript.TribesGame.TrSpinfusorMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrSpinfusorMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSpinfusorMuzzleFlashLight")); }
}

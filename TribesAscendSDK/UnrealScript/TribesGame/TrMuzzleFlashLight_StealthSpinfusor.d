module UnrealScript.TribesGame.TrMuzzleFlashLight_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_StealthSpinfusor : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_StealthSpinfusor")); }
}

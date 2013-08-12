module UnrealScript.TribesGame.TrMuzzleFlashLight_AssaultRifle;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_AssaultRifle : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_AssaultRifle")); }
	private static __gshared TrMuzzleFlashLight_AssaultRifle mDefaultProperties;
	@property final static TrMuzzleFlashLight_AssaultRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMuzzleFlashLight_AssaultRifle)("TrMuzzleFlashLight_AssaultRifle TribesGame.Default__TrMuzzleFlashLight_AssaultRifle")); }
}

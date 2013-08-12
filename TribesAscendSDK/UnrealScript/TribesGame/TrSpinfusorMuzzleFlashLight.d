module UnrealScript.TribesGame.TrSpinfusorMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrSpinfusorMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSpinfusorMuzzleFlashLight")); }
	private static __gshared TrSpinfusorMuzzleFlashLight mDefaultProperties;
	@property final static TrSpinfusorMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSpinfusorMuzzleFlashLight)("TrSpinfusorMuzzleFlashLight TribesGame.Default__TrSpinfusorMuzzleFlashLight")); }
}

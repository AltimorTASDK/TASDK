module UnrealScript.TribesGame.TrMuzzleFlashLight_TCN4SMG;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_TCN4SMG : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_TCN4SMG")); }
	private static __gshared TrMuzzleFlashLight_TCN4SMG mDefaultProperties;
	@property final static TrMuzzleFlashLight_TCN4SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMuzzleFlashLight_TCN4SMG)("TrMuzzleFlashLight_TCN4SMG TribesGame.Default__TrMuzzleFlashLight_TCN4SMG")); }
}

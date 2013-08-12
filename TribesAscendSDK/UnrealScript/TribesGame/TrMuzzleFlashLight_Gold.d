module UnrealScript.TribesGame.TrMuzzleFlashLight_Gold;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_Gold : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_Gold")); }
	private static __gshared TrMuzzleFlashLight_Gold mDefaultProperties;
	@property final static TrMuzzleFlashLight_Gold DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMuzzleFlashLight_Gold)("TrMuzzleFlashLight_Gold TribesGame.Default__TrMuzzleFlashLight_Gold")); }
}

module UnrealScript.TribesGame.TrNeutralMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrNeutralMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrNeutralMuzzleFlashLight")); }
	private static __gshared TrNeutralMuzzleFlashLight mDefaultProperties;
	@property final static TrNeutralMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrNeutralMuzzleFlashLight)("TrNeutralMuzzleFlashLight TribesGame.Default__TrNeutralMuzzleFlashLight")); }
}

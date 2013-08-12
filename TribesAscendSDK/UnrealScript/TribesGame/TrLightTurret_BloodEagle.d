module UnrealScript.TribesGame.TrLightTurret_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_LightTurret;

extern(C++) interface TrLightTurret_BloodEagle : TrDeployable_LightTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrLightTurret_BloodEagle")); }
	private static __gshared TrLightTurret_BloodEagle mDefaultProperties;
	@property final static TrLightTurret_BloodEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrLightTurret_BloodEagle)("TrLightTurret_BloodEagle TribesGame.Default__TrLightTurret_BloodEagle")); }
}

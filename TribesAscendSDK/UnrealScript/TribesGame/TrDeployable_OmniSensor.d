module UnrealScript.TribesGame.TrDeployable_OmniSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_OmniSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_OmniSensor")); }
	private static __gshared TrDeployable_OmniSensor mDefaultProperties;
	@property final static TrDeployable_OmniSensor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployable_OmniSensor)("TrDeployable_OmniSensor TribesGame.Default__TrDeployable_OmniSensor")); }
}

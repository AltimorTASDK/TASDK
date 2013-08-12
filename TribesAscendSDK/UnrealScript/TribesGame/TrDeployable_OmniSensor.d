module UnrealScript.TribesGame.TrDeployable_OmniSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_OmniSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_OmniSensor")); }
}

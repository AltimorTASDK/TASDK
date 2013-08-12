module UnrealScript.TribesGame.TrDevice_MotionSensorDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Mine;

extern(C++) interface TrDevice_MotionSensorDeployable : TrDevice_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_MotionSensorDeployable")); }
}

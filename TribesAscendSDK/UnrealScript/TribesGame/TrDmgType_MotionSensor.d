module UnrealScript.TribesGame.TrDmgType_MotionSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_MotionSensor : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_MotionSensor")); }
}

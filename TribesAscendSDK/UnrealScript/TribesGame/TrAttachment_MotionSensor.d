module UnrealScript.TribesGame.TrAttachment_MotionSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MotionSensor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_MotionSensor")); }
	private static __gshared TrAttachment_MotionSensor mDefaultProperties;
	@property final static TrAttachment_MotionSensor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_MotionSensor)("TrAttachment_MotionSensor TribesGame.Default__TrAttachment_MotionSensor")); }
}

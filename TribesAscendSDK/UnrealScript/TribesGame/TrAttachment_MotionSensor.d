module UnrealScript.TribesGame.TrAttachment_MotionSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MotionSensor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_MotionSensor")()); }
	private static __gshared TrAttachment_MotionSensor mDefaultProperties;
	@property final static TrAttachment_MotionSensor DefaultProperties() { mixin(MGDPC!(TrAttachment_MotionSensor, "TrAttachment_MotionSensor TribesGame.Default__TrAttachment_MotionSensor")()); }
}

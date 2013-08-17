module UnrealScript.TribesGame.TrDmgType_MotionSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_MotionSensor : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_MotionSensor")()); }
	private static __gshared TrDmgType_MotionSensor mDefaultProperties;
	@property final static TrDmgType_MotionSensor DefaultProperties() { mixin(MGDPC!(TrDmgType_MotionSensor, "TrDmgType_MotionSensor TribesGame.Default__TrDmgType_MotionSensor")()); }
}

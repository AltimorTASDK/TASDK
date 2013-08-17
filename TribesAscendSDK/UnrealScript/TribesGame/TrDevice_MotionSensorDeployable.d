module UnrealScript.TribesGame.TrDevice_MotionSensorDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Mine;

extern(C++) interface TrDevice_MotionSensorDeployable : TrDevice_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_MotionSensorDeployable")()); }
	private static __gshared TrDevice_MotionSensorDeployable mDefaultProperties;
	@property final static TrDevice_MotionSensorDeployable DefaultProperties() { mixin(MGDPC!(TrDevice_MotionSensorDeployable, "TrDevice_MotionSensorDeployable TribesGame.Default__TrDevice_MotionSensorDeployable")()); }
}

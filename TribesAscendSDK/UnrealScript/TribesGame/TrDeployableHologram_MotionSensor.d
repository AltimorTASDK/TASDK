module UnrealScript.TribesGame.TrDeployableHologram_MotionSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_MotionSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_MotionSensor")); }
	private static __gshared TrDeployableHologram_MotionSensor mDefaultProperties;
	@property final static TrDeployableHologram_MotionSensor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_MotionSensor)("TrDeployableHologram_MotionSensor TribesGame.Default__TrDeployableHologram_MotionSensor")); }
}

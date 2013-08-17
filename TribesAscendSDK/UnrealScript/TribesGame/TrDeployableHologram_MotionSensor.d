module UnrealScript.TribesGame.TrDeployableHologram_MotionSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_MotionSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableHologram_MotionSensor")()); }
	private static __gshared TrDeployableHologram_MotionSensor mDefaultProperties;
	@property final static TrDeployableHologram_MotionSensor DefaultProperties() { mixin(MGDPC!(TrDeployableHologram_MotionSensor, "TrDeployableHologram_MotionSensor TribesGame.Default__TrDeployableHologram_MotionSensor")()); }
}

module UnrealScript.TribesGame.TrDeployable_OmniSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_OmniSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_OmniSensor")()); }
	private static __gshared TrDeployable_OmniSensor mDefaultProperties;
	@property final static TrDeployable_OmniSensor DefaultProperties() { mixin(MGDPC!(TrDeployable_OmniSensor, "TrDeployable_OmniSensor TribesGame.Default__TrDeployable_OmniSensor")()); }
}

module UnrealScript.TribesGame.TrDeployableHologram_TripSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_TripSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableHologram_TripSensor")()); }
	private static __gshared TrDeployableHologram_TripSensor mDefaultProperties;
	@property final static TrDeployableHologram_TripSensor DefaultProperties() { mixin(MGDPC!(TrDeployableHologram_TripSensor, "TrDeployableHologram_TripSensor TribesGame.Default__TrDeployableHologram_TripSensor")()); }
}

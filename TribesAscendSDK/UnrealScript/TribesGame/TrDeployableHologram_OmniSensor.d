module UnrealScript.TribesGame.TrDeployableHologram_OmniSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_OmniSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableHologram_OmniSensor")); }
	private static __gshared TrDeployableHologram_OmniSensor mDefaultProperties;
	@property final static TrDeployableHologram_OmniSensor DefaultProperties() { mixin(MGDPC("TrDeployableHologram_OmniSensor", "TrDeployableHologram_OmniSensor TribesGame.Default__TrDeployableHologram_OmniSensor")); }
}

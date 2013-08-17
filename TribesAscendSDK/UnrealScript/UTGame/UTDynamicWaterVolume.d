module UnrealScript.UTGame.UTDynamicWaterVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWaterVolume;

extern(C++) interface UTDynamicWaterVolume : UTWaterVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDynamicWaterVolume")()); }
	private static __gshared UTDynamicWaterVolume mDefaultProperties;
	@property final static UTDynamicWaterVolume DefaultProperties() { mixin(MGDPC!(UTDynamicWaterVolume, "UTDynamicWaterVolume UTGame.Default__UTDynamicWaterVolume")()); }
}

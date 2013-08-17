module UnrealScript.UTGame.UTSlimeVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WaterVolume;

extern(C++) interface UTSlimeVolume : WaterVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSlimeVolume")()); }
	private static __gshared UTSlimeVolume mDefaultProperties;
	@property final static UTSlimeVolume DefaultProperties() { mixin(MGDPC!(UTSlimeVolume, "UTSlimeVolume UTGame.Default__UTSlimeVolume")()); }
}

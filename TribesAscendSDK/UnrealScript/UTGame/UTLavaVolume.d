module UnrealScript.UTGame.UTLavaVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WaterVolume;

extern(C++) interface UTLavaVolume : WaterVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTLavaVolume")); }
	private static __gshared UTLavaVolume mDefaultProperties;
	@property final static UTLavaVolume DefaultProperties() { mixin(MGDPC("UTLavaVolume", "UTLavaVolume UTGame.Default__UTLavaVolume")); }
}

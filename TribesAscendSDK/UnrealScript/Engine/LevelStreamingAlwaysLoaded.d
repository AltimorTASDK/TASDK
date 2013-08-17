module UnrealScript.Engine.LevelStreamingAlwaysLoaded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingAlwaysLoaded : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LevelStreamingAlwaysLoaded")); }
	private static __gshared LevelStreamingAlwaysLoaded mDefaultProperties;
	@property final static LevelStreamingAlwaysLoaded DefaultProperties() { mixin(MGDPC("LevelStreamingAlwaysLoaded", "LevelStreamingAlwaysLoaded Engine.Default__LevelStreamingAlwaysLoaded")); }
	@property final
	{
		bool bIsProceduralBuildingLODLevel() { mixin(MGBPC(152, 0x1)); }
		bool bIsProceduralBuildingLODLevel(bool val) { mixin(MSBPC(152, 0x1)); }
	}
}

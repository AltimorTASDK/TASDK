module UnrealScript.Engine.LevelStreamingKismet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingKismet : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LevelStreamingKismet")); }
	private static __gshared LevelStreamingKismet mDefaultProperties;
	@property final static LevelStreamingKismet DefaultProperties() { mixin(MGDPC("LevelStreamingKismet", "LevelStreamingKismet Engine.Default__LevelStreamingKismet")); }
}

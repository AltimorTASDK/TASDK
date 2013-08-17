module UnrealScript.Engine.LevelStreamingPersistent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingPersistent : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LevelStreamingPersistent")()); }
	private static __gshared LevelStreamingPersistent mDefaultProperties;
	@property final static LevelStreamingPersistent DefaultProperties() { mixin(MGDPC!(LevelStreamingPersistent, "LevelStreamingPersistent Engine.Default__LevelStreamingPersistent")()); }
}

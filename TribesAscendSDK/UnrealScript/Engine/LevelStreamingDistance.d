module UnrealScript.Engine.LevelStreamingDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingDistance : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LevelStreamingDistance")); }
	private static __gshared LevelStreamingDistance mDefaultProperties;
	@property final static LevelStreamingDistance DefaultProperties() { mixin(MGDPC("LevelStreamingDistance", "LevelStreamingDistance Engine.Default__LevelStreamingDistance")); }
	@property final auto ref
	{
		float MaxDistance() { mixin(MGPC("float", 164)); }
		Vector Origin() { mixin(MGPC("Vector", 152)); }
	}
}

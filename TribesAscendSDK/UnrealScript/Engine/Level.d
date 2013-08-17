module UnrealScript.Engine.Level;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelBase;

extern(C++) interface Level : LevelBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Level")()); }
	private static __gshared Level mDefaultProperties;
	@property final static Level DefaultProperties() { mixin(MGDPC!(Level, "Level Engine.Default__Level")()); }
	@property final auto ref
	{
		float LightmapTotalSize() { mixin(MGPC!("float", 360)()); }
		float ShadowmapTotalSize() { mixin(MGPC!("float", 364)()); }
	}
}

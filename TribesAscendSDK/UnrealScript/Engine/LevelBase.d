module UnrealScript.Engine.LevelBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface LevelBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LevelBase")); }
	private static __gshared LevelBase mDefaultProperties;
	@property final static LevelBase DefaultProperties() { mixin(MGDPC("LevelBase", "LevelBase Engine.Default__LevelBase")); }
}

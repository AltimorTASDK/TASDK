module UnrealScript.Engine.SaveGameSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface SaveGameSummary : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SaveGameSummary")); }
	private static __gshared SaveGameSummary mDefaultProperties;
	@property final static SaveGameSummary DefaultProperties() { mixin(MGDPC("SaveGameSummary", "SaveGameSummary Engine.Default__SaveGameSummary")); }
	@property final auto ref
	{
		ScriptString Description() { mixin(MGPC("ScriptString", 68)); }
		ScriptName BaseLevel() { mixin(MGPC("ScriptName", 60)); }
	}
}

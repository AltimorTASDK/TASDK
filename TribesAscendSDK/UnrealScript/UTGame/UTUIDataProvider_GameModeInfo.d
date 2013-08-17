module UnrealScript.UTGame.UTUIDataProvider_GameModeInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_GameModeInfo : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTUIDataProvider_GameModeInfo")); }
	private static __gshared UTUIDataProvider_GameModeInfo mDefaultProperties;
	@property final static UTUIDataProvider_GameModeInfo DefaultProperties() { mixin(MGDPC("UTUIDataProvider_GameModeInfo", "UTUIDataProvider_GameModeInfo UTGame.Default__UTUIDataProvider_GameModeInfo")); }
	@property final auto ref
	{
		ScriptString GameMode() { mixin(MGPC("ScriptString", 152)); }
		ScriptString DefaultMap() { mixin(MGPC("ScriptString", 164)); }
		ScriptString Prefixes() { mixin(MGPC("ScriptString", 236)); }
		ScriptString GameSettingsClass() { mixin(MGPC("ScriptString", 176)); }
		ScriptString Description() { mixin(MGPC("ScriptString", 212)); }
		ScriptString PreviewImageMarkup() { mixin(MGPC("ScriptString", 224)); }
		float IconVL() { mixin(MGPC("float", 272)); }
		float IconUL() { mixin(MGPC("float", 268)); }
		float IconV() { mixin(MGPC("float", 264)); }
		float IconU() { mixin(MGPC("float", 260)); }
		ScriptString IconImage() { mixin(MGPC("ScriptString", 248)); }
		ScriptString OptionSet() { mixin(MGPC("ScriptString", 200)); }
		ScriptString GameSearchClass() { mixin(MGPC("ScriptString", 188)); }
	}
}

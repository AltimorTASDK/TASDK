module UnrealScript.UTGame.UTGameSettingsCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsCTF : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGameSettingsCTF")); }
	private static __gshared UTGameSettingsCTF mDefaultProperties;
	@property final static UTGameSettingsCTF DefaultProperties() { mixin(MGDPC("UTGameSettingsCTF", "UTGameSettingsCTF UTGame.Default__UTGameSettingsCTF")); }
}

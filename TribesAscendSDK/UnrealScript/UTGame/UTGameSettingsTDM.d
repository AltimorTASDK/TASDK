module UnrealScript.UTGame.UTGameSettingsTDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsTDM : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGameSettingsTDM")()); }
	private static __gshared UTGameSettingsTDM mDefaultProperties;
	@property final static UTGameSettingsTDM DefaultProperties() { mixin(MGDPC!(UTGameSettingsTDM, "UTGameSettingsTDM UTGame.Default__UTGameSettingsTDM")()); }
}

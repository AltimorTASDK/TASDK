module UnrealScript.UTGame.UTGameSettingsDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsDM : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGameSettingsDM")()); }
	private static __gshared UTGameSettingsDM mDefaultProperties;
	@property final static UTGameSettingsDM DefaultProperties() { mixin(MGDPC!(UTGameSettingsDM, "UTGameSettingsDM UTGame.Default__UTGameSettingsDM")()); }
}

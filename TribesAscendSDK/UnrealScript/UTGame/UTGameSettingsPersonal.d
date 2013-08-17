module UnrealScript.UTGame.UTGameSettingsPersonal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsPersonal : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGameSettingsPersonal")()); }
	private static __gshared UTGameSettingsPersonal mDefaultProperties;
	@property final static UTGameSettingsPersonal DefaultProperties() { mixin(MGDPC!(UTGameSettingsPersonal, "UTGameSettingsPersonal UTGame.Default__UTGameSettingsPersonal")()); }
}

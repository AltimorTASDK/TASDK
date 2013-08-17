module UnrealScript.UTGame.UTGameSettingsVCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsVCTF : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGameSettingsVCTF")); }
	private static __gshared UTGameSettingsVCTF mDefaultProperties;
	@property final static UTGameSettingsVCTF DefaultProperties() { mixin(MGDPC("UTGameSettingsVCTF", "UTGameSettingsVCTF UTGame.Default__UTGameSettingsVCTF")); }
}

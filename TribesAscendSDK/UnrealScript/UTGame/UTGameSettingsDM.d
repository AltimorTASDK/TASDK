module UnrealScript.UTGame.UTGameSettingsDM;

import ScriptClasses;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsDM : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameSettingsDM")); }
	private static __gshared UTGameSettingsDM mDefaultProperties;
	@property final static UTGameSettingsDM DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGameSettingsDM)("UTGameSettingsDM UTGame.Default__UTGameSettingsDM")); }
}

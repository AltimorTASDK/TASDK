module UnrealScript.UTGame.UTGameSettingsTDM;

import ScriptClasses;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsTDM : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameSettingsTDM")); }
	private static __gshared UTGameSettingsTDM mDefaultProperties;
	@property final static UTGameSettingsTDM DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGameSettingsTDM)("UTGameSettingsTDM UTGame.Default__UTGameSettingsTDM")); }
}

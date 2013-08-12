module UnrealScript.UTGame.UTGameSettingsCTF;

import ScriptClasses;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsCTF : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameSettingsCTF")); }
	private static __gshared UTGameSettingsCTF mDefaultProperties;
	@property final static UTGameSettingsCTF DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGameSettingsCTF)("UTGameSettingsCTF UTGame.Default__UTGameSettingsCTF")); }
}

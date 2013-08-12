module UnrealScript.UTGame.UTUIDataProvider_MenuOption;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_MenuOption;

extern(C++) interface UTUIDataProvider_MenuOption : UDKUIDataProvider_MenuOption
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_MenuOption")); }
	private static __gshared UTUIDataProvider_MenuOption mDefaultProperties;
	@property final static UTUIDataProvider_MenuOption DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_MenuOption)("UTUIDataProvider_MenuOption UTGame.Default__UTUIDataProvider_MenuOption")); }
}

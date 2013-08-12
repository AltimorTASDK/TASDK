module UnrealScript.UTGame.UTUIDataProvider_MenuOption;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_MenuOption;

extern(C++) interface UTUIDataProvider_MenuOption : UDKUIDataProvider_MenuOption
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_MenuOption")); }
}

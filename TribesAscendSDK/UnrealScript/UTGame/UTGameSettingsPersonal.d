module UnrealScript.UTGame.UTGameSettingsPersonal;

import ScriptClasses;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsPersonal : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameSettingsPersonal")); }
}

module UnrealScript.UTGame.UTGameSettingsVCTF;

import ScriptClasses;
import UnrealScript.UTGame.UTGameSettingsCommon;

extern(C++) interface UTGameSettingsVCTF : UTGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameSettingsVCTF")); }
}

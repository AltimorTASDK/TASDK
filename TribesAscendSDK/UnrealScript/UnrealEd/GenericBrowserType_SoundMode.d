module UnrealScript.UnrealEd.GenericBrowserType_SoundMode;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundMode : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_SoundMode")); }
}

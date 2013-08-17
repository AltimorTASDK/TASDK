module UnrealScript.UnrealEd.GenericBrowserType_SoundMode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundMode : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_SoundMode")()); }
	private static __gshared GenericBrowserType_SoundMode mDefaultProperties;
	@property final static GenericBrowserType_SoundMode DefaultProperties() { mixin(MGDPC!(GenericBrowserType_SoundMode, "GenericBrowserType_SoundMode UnrealEd.Default__GenericBrowserType_SoundMode")()); }
}

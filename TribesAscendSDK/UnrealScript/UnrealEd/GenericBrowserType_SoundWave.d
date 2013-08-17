module UnrealScript.UnrealEd.GenericBrowserType_SoundWave;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundWave : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_SoundWave")); }
	private static __gshared GenericBrowserType_SoundWave mDefaultProperties;
	@property final static GenericBrowserType_SoundWave DefaultProperties() { mixin(MGDPC("GenericBrowserType_SoundWave", "GenericBrowserType_SoundWave UnrealEd.Default__GenericBrowserType_SoundWave")); }
}

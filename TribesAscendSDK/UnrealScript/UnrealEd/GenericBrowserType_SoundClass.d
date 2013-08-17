module UnrealScript.UnrealEd.GenericBrowserType_SoundClass;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundClass : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_SoundClass")); }
	private static __gshared GenericBrowserType_SoundClass mDefaultProperties;
	@property final static GenericBrowserType_SoundClass DefaultProperties() { mixin(MGDPC("GenericBrowserType_SoundClass", "GenericBrowserType_SoundClass UnrealEd.Default__GenericBrowserType_SoundClass")); }
}

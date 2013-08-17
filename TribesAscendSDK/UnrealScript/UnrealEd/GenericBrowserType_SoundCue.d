module UnrealScript.UnrealEd.GenericBrowserType_SoundCue;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundCue : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_SoundCue")()); }
	private static __gshared GenericBrowserType_SoundCue mDefaultProperties;
	@property final static GenericBrowserType_SoundCue DefaultProperties() { mixin(MGDPC!(GenericBrowserType_SoundCue, "GenericBrowserType_SoundCue UnrealEd.Default__GenericBrowserType_SoundCue")()); }
}

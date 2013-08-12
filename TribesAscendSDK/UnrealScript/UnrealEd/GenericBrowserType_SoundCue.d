module UnrealScript.UnrealEd.GenericBrowserType_SoundCue;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundCue : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_SoundCue")); }
	private static __gshared GenericBrowserType_SoundCue mDefaultProperties;
	@property final static GenericBrowserType_SoundCue DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_SoundCue)("GenericBrowserType_SoundCue UnrealEd.Default__GenericBrowserType_SoundCue")); }
}

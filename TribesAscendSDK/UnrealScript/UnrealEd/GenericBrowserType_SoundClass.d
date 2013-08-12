module UnrealScript.UnrealEd.GenericBrowserType_SoundClass;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundClass : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_SoundClass")); }
	private static __gshared GenericBrowserType_SoundClass mDefaultProperties;
	@property final static GenericBrowserType_SoundClass DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_SoundClass)("GenericBrowserType_SoundClass UnrealEd.Default__GenericBrowserType_SoundClass")); }
}

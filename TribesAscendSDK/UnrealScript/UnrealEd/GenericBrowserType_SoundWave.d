module UnrealScript.UnrealEd.GenericBrowserType_SoundWave;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Sounds;

extern(C++) interface GenericBrowserType_SoundWave : GenericBrowserType_Sounds
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_SoundWave")); }
	private static __gshared GenericBrowserType_SoundWave mDefaultProperties;
	@property final static GenericBrowserType_SoundWave DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_SoundWave)("GenericBrowserType_SoundWave UnrealEd.Default__GenericBrowserType_SoundWave")); }
}

module UnrealScript.UnrealEd.ListSoundNodeWavesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListSoundNodeWavesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListSoundNodeWavesCommandlet")); }
	private static __gshared ListSoundNodeWavesCommandlet mDefaultProperties;
	@property final static ListSoundNodeWavesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListSoundNodeWavesCommandlet)("ListSoundNodeWavesCommandlet UnrealEd.Default__ListSoundNodeWavesCommandlet")); }
}

module UnrealScript.UnrealEd.ScaleAudioVolumeCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ScaleAudioVolumeCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ScaleAudioVolumeCommandlet")); }
	private static __gshared ScaleAudioVolumeCommandlet mDefaultProperties;
	@property final static ScaleAudioVolumeCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ScaleAudioVolumeCommandlet)("ScaleAudioVolumeCommandlet UnrealEd.Default__ScaleAudioVolumeCommandlet")); }
}

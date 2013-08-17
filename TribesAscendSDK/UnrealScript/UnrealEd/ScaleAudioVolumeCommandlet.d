module UnrealScript.UnrealEd.ScaleAudioVolumeCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ScaleAudioVolumeCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ScaleAudioVolumeCommandlet")); }
	private static __gshared ScaleAudioVolumeCommandlet mDefaultProperties;
	@property final static ScaleAudioVolumeCommandlet DefaultProperties() { mixin(MGDPC("ScaleAudioVolumeCommandlet", "ScaleAudioVolumeCommandlet UnrealEd.Default__ScaleAudioVolumeCommandlet")); }
}

module UnrealScript.UnrealEd.ListSoundNodeWavesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListSoundNodeWavesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ListSoundNodeWavesCommandlet")); }
	private static __gshared ListSoundNodeWavesCommandlet mDefaultProperties;
	@property final static ListSoundNodeWavesCommandlet DefaultProperties() { mixin(MGDPC("ListSoundNodeWavesCommandlet", "ListSoundNodeWavesCommandlet UnrealEd.Default__ListSoundNodeWavesCommandlet")); }
}

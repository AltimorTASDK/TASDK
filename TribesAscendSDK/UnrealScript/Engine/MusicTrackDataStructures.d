module UnrealScript.Engine.MusicTrackDataStructures;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;

extern(C++) interface MusicTrackDataStructures : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MusicTrackDataStructures")); }
	private static __gshared MusicTrackDataStructures mDefaultProperties;
	@property final static MusicTrackDataStructures DefaultProperties() { mixin(MGDPC("MusicTrackDataStructures", "MusicTrackDataStructures Engine.Default__MusicTrackDataStructures")); }
	struct MusicTrackStruct
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.MusicTrackDataStructures.MusicTrackStruct")); }
		@property final
		{
			auto ref
			{
				ScriptString MP3Filename() { mixin(MGPS("ScriptString", 24)); }
				float FadeOutVolumeLevel() { mixin(MGPS("float", 20)); }
				float FadeOutTime() { mixin(MGPS("float", 16)); }
				float FadeInVolumeLevel() { mixin(MGPS("float", 12)); }
				float FadeInTime() { mixin(MGPS("float", 8)); }
				SoundCue TheSoundCue() { mixin(MGPS("SoundCue", 0)); }
			}
			bool bPersistentAcrossLevels() { mixin(MGBPS(4, 0x2)); }
			bool bPersistentAcrossLevels(bool val) { mixin(MSBPS(4, 0x2)); }
			bool bAutoPlay() { mixin(MGBPS(4, 0x1)); }
			bool bAutoPlay(bool val) { mixin(MSBPS(4, 0x1)); }
		}
	}
}

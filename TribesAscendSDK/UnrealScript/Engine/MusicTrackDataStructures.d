module UnrealScript.Engine.MusicTrackDataStructures;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;

extern(C++) interface MusicTrackDataStructures : UObject
{
	struct MusicTrackStruct
	{
		public @property final auto ref ScriptString MP3Filename() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __MP3Filename[12];
		public @property final auto ref float FadeOutVolumeLevel() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __FadeOutVolumeLevel[4];
		public @property final auto ref float FadeOutTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __FadeOutTime[4];
		public @property final auto ref float FadeInVolumeLevel() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __FadeInVolumeLevel[4];
		public @property final auto ref float FadeInTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __FadeInTime[4];
		public @property final bool bPersistentAcrossLevels() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
		public @property final bool bPersistentAcrossLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
		private ubyte __bPersistentAcrossLevels[4];
		public @property final bool bAutoPlay() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bAutoPlay[4];
		public @property final auto ref SoundCue TheSoundCue() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		private ubyte __TheSoundCue[4];
	}
}

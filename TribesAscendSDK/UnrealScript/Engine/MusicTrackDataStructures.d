module UnrealScript.Engine.MusicTrackDataStructures;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;

extern(C++) interface MusicTrackDataStructures : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MusicTrackDataStructures")); }
	struct MusicTrackStruct
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MusicTrackDataStructures.MusicTrackStruct")); }
		@property final
		{
			auto ref
			{
				ScriptString MP3Filename() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
				float FadeOutVolumeLevel() { return *cast(float*)(cast(size_t)&this + 20); }
				float FadeOutTime() { return *cast(float*)(cast(size_t)&this + 16); }
				float FadeInVolumeLevel() { return *cast(float*)(cast(size_t)&this + 12); }
				float FadeInTime() { return *cast(float*)(cast(size_t)&this + 8); }
				SoundCue TheSoundCue() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
			}
			bool bPersistentAcrossLevels() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
			bool bPersistentAcrossLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
			bool bAutoPlay() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
}

module UnrealScript.Engine.InterpTrackFaceFX;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackFaceFX : InterpTrack
{
	struct FaceFXTrackKey
	{
		public @property final auto ref ScriptString FaceFXSeqName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __FaceFXSeqName[12];
		public @property final auto ref ScriptString FaceFXGroupName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __FaceFXGroupName[12];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __StartTime[4];
	}
	struct FaceFXSoundCueKey
	{
		public @property final auto ref SoundCue FaceFXSoundCue() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		private ubyte __FaceFXSoundCue[4];
	}
	public @property final auto ref ScriptArray!(FaceFXAnimSet) FaceFXAnimSets() { return *cast(ScriptArray!(FaceFXAnimSet)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptArray!(InterpTrackFaceFX.FaceFXTrackKey) FaceFXSeqs() { return *cast(ScriptArray!(InterpTrackFaceFX.FaceFXTrackKey)*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptArray!(InterpTrackFaceFX.FaceFXSoundCueKey) FaceFXSoundCueKeys() { return *cast(ScriptArray!(InterpTrackFaceFX.FaceFXSoundCueKey)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref FaceFXAsset CachedActorFXAsset() { return *cast(FaceFXAsset*)(cast(size_t)cast(void*)this + 152); }
}

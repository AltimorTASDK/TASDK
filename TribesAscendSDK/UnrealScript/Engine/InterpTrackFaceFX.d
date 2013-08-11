module UnrealScript.Engine.InterpTrackFaceFX;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackFaceFX : InterpTrack
{
public extern(D):
	struct FaceFXTrackKey
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			ScriptString FaceFXSeqName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			ScriptString FaceFXGroupName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			float StartTime() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct FaceFXSoundCueKey
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final auto ref SoundCue FaceFXSoundCue() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
	}
	@property final auto ref
	{
		ScriptArray!(FaceFXAnimSet) FaceFXAnimSets() { return *cast(ScriptArray!(FaceFXAnimSet)*)(cast(size_t)cast(void*)this + 128); }
		ScriptArray!(InterpTrackFaceFX.FaceFXTrackKey) FaceFXSeqs() { return *cast(ScriptArray!(InterpTrackFaceFX.FaceFXTrackKey)*)(cast(size_t)cast(void*)this + 140); }
		ScriptArray!(InterpTrackFaceFX.FaceFXSoundCueKey) FaceFXSoundCueKeys() { return *cast(ScriptArray!(InterpTrackFaceFX.FaceFXSoundCueKey)*)(cast(size_t)cast(void*)this + 156); }
		FaceFXAsset CachedActorFXAsset() { return *cast(FaceFXAsset*)(cast(size_t)cast(void*)this + 152); }
	}
}

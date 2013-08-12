module UnrealScript.Engine.AudioComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ReverbVolume;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.PortalVolume;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface AudioComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AudioComponent")); }
	private static __gshared AudioComponent mDefaultProperties;
	@property final static AudioComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AudioComponent)("AudioComponent Engine.Default__AudioComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResetToDefaults;
			ScriptFunction mPlay;
			ScriptFunction mFadeIn;
			ScriptFunction mFadeOut;
			ScriptFunction mOnQueueSubtitles;
			ScriptFunction mOnAudioFinished;
			ScriptFunction mStop;
			ScriptFunction mIsPlaying;
			ScriptFunction mAdjustVolume;
			ScriptFunction mSetFloatParameter;
			ScriptFunction mSetWaveParameter;
			ScriptFunction mOcclusionChanged;
		}
		public @property static final
		{
			ScriptFunction ResetToDefaults() { return mResetToDefaults ? mResetToDefaults : (mResetToDefaults = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.ResetToDefaults")); }
			ScriptFunction Play() { return mPlay ? mPlay : (mPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.Play")); }
			ScriptFunction FadeIn() { return mFadeIn ? mFadeIn : (mFadeIn = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.FadeIn")); }
			ScriptFunction FadeOut() { return mFadeOut ? mFadeOut : (mFadeOut = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.FadeOut")); }
			ScriptFunction OnQueueSubtitles() { return mOnQueueSubtitles ? mOnQueueSubtitles : (mOnQueueSubtitles = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.OnQueueSubtitles")); }
			ScriptFunction OnAudioFinished() { return mOnAudioFinished ? mOnAudioFinished : (mOnAudioFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.OnAudioFinished")); }
			ScriptFunction Stop() { return mStop ? mStop : (mStop = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.Stop")); }
			ScriptFunction IsPlaying() { return mIsPlaying ? mIsPlaying : (mIsPlaying = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.IsPlaying")); }
			ScriptFunction AdjustVolume() { return mAdjustVolume ? mAdjustVolume : (mAdjustVolume = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.AdjustVolume")); }
			ScriptFunction SetFloatParameter() { return mSetFloatParameter ? mSetFloatParameter : (mSetFloatParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.SetFloatParameter")); }
			ScriptFunction SetWaveParameter() { return mSetWaveParameter ? mSetWaveParameter : (mSetWaveParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.SetWaveParameter")); }
			ScriptFunction OcclusionChanged() { return mOcclusionChanged ? mOcclusionChanged : (mOcclusionChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.AudioComponent.OcclusionChanged")); }
		}
	}
	struct AudioComponentParam
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AudioComponent.AudioComponentParam")); }
		@property final auto ref
		{
			SoundNodeWave WaveParam() { return *cast(SoundNodeWave*)(cast(size_t)&this + 12); }
			float FloatParam() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
			float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float SubtitlePriority() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
			// WARNING: Property 'SoundCue' has the same name as a defined type!
			ScriptArray!(AudioComponent.AudioComponentParam) InstanceParameters() { return *cast(ScriptArray!(AudioComponent.AudioComponentParam)*)(cast(size_t)cast(void*)this + 96); }
			ScriptArray!(UObject.Pointer) WaveInstances() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 124); }
			ScriptArray!(ubyte) SoundNodeData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 136); }
			float LastOcclusionCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float OcclusionCheckInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float HighFrequencyGainMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			int LastReverbVolumeIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
			ReverbVolume.InteriorSettings LastInteriorSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 448); }
			Vector LastLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 436); }
			float CurrentInteriorLPF() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
			float CurrentInteriorVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 428); }
			float SourceInteriorLPF() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
			float SourceInteriorVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
			UObject.Double LastUpdateTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 412); }
			float CurrentRadioFilterVolumeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
			float CurrentRadioFilterVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
			float CurrentVoiceCenterChannelVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
			float CurrentHighFrequencyGainMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
			float CurrentPitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
			float CurrentVolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
			int CurrentNotifyOnLoop() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
			int CurrentUseSpatialization() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
			float CurrentHighFrequencyGain() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
			float CurrentPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			float CurrentVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
			Vector CurrentLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 356); }
			SoundNode CurrentNotifyBufferFinishedHook() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 352); }
			float CurrAdjustVolumeTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
			float AdjustVolumeTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 344); }
			float AdjustVolumeStopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
			float AdjustVolumeStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			float FadeOutTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			float FadeOutStopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			float FadeOutStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			float FadeInTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float FadeInStopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float FadeInStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			Actor LastOwner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 304); }
			Vector ComponentLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
			// WARNING: Property 'PortalVolume' has the same name as a defined type!
			float PlaybackTime() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			// WARNING: Property 'Listener' has the same name as a defined type!
			UObject.MultiMap_Mirror SoundNodeResetWaveMap() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 208); }
			float LFEBleed() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float StereoBleed() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			SoundNode CueFirstNode() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bUseOwnerLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bUseOwnerLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
		bool bAllowSpatialization() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x100) != 0; }
		bool bAllowSpatialization(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x100; } return val; }
		bool bAutoDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
		bool bAutoDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
		bool bSuppressSubtitles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x40) != 0; }
		bool bSuppressSubtitles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x40; } return val; }
		bool bBassBoost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x40) != 0; }
		bool bBassBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x40; } return val; }
		bool bCenterChannelOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x20) != 0; }
		bool bCenterChannelOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x20; } return val; }
		bool bReverb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
		bool bReverb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
		bool bIsMusic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
		bool bIsMusic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
		bool bIsUISound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
		bool bIsUISound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
		bool bAlwaysPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
		bool bAlwaysPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
		bool bEQFilterApplied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool bEQFilterApplied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
		bool bIgnoreForFlushing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x800) != 0; }
		bool bIgnoreForFlushing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x800; } return val; }
		bool bPreviewComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x400) != 0; }
		bool bPreviewComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x400; } return val; }
		bool bFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x200) != 0; }
		bool bFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x200; } return val; }
		bool bWasPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x80) != 0; }
		bool bWasPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x80; } return val; }
		bool bWasOccluded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x20) != 0; }
		bool bWasOccluded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x20; } return val; }
		bool bShouldRemainActiveIfDropped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x10) != 0; }
		bool bShouldRemainActiveIfDropped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x10; } return val; }
		bool bStopWhenOwnerDestroyed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
		bool bStopWhenOwnerDestroyed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
		bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
		bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
	}
final:
	void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetToDefaults, cast(void*)0, cast(void*)0);
	}
	void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Play, cast(void*)0, cast(void*)0);
	}
	void FadeIn(float FadeInDuration, float FadeVolumeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = FadeInDuration;
		*cast(float*)&params[4] = FadeVolumeLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.FadeIn, params.ptr, cast(void*)0);
	}
	void FadeOut(float FadeOutDuration, float FadeVolumeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = FadeOutDuration;
		*cast(float*)&params[4] = FadeVolumeLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.FadeOut, params.ptr, cast(void*)0);
	}
	void OnQueueSubtitles(ScriptArray!(EngineTypes.SubtitleCue) Subtitles, float CueDuration)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(EngineTypes.SubtitleCue)*)params.ptr = Subtitles;
		*cast(float*)&params[12] = CueDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnQueueSubtitles, params.ptr, cast(void*)0);
	}
	void OnAudioFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAudioFinished, params.ptr, cast(void*)0);
	}
	void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Stop, cast(void*)0, cast(void*)0);
	}
	bool IsPlaying()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlaying, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AdjustVolume(float AdjustVolumeDuration, float AdjustVolumeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = AdjustVolumeDuration;
		*cast(float*)&params[4] = AdjustVolumeLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustVolume, params.ptr, cast(void*)0);
	}
	void SetFloatParameter(ScriptName InName, float InFloat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(float*)&params[8] = InFloat;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatParameter, params.ptr, cast(void*)0);
	}
	void SetWaveParameter(ScriptName InName, SoundNodeWave InWave)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(SoundNodeWave*)&params[8] = InWave;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWaveParameter, params.ptr, cast(void*)0);
	}
	void OcclusionChanged(bool bNowOccluded)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOccluded;
		(cast(ScriptObject)this).ProcessEvent(Functions.OcclusionChanged, params.ptr, cast(void*)0);
	}
}

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
	struct AudioComponentParam
	{
		public @property final auto ref SoundNodeWave WaveParam() { return *cast(SoundNodeWave*)(cast(size_t)&this + 12); }
		private ubyte __WaveParam[4];
		public @property final auto ref float FloatParam() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __FloatParam[4];
		public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParamName[8];
	}
	public @property final bool bUseOwnerLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool bUseOwnerLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
	public @property final bool bAllowSpatialization() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x100) != 0; }
	public @property final bool bAllowSpatialization(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x100; } return val; }
	public @property final auto ref float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final bool bAutoDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
	public @property final bool bAutoDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
	public @property final auto ref float SubtitlePriority() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final bool bSuppressSubtitles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x40) != 0; }
	public @property final bool bSuppressSubtitles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x40; } return val; }
	// WARNING: Property 'SoundCue' has the same name as a defined type!
	public @property final auto ref ScriptArray!(AudioComponent.AudioComponentParam) InstanceParameters() { return *cast(ScriptArray!(AudioComponent.AudioComponentParam)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(UObject.Pointer) WaveInstances() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptArray!(ubyte) SoundNodeData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float LastOcclusionCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float OcclusionCheckInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float HighFrequencyGainMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int LastReverbVolumeIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref ReverbVolume.InteriorSettings LastInteriorSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref Vector LastLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref float CurrentInteriorLPF() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref float CurrentInteriorVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref float SourceInteriorLPF() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref float SourceInteriorVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref UObject.Double LastUpdateTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref float CurrentRadioFilterVolumeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref float CurrentRadioFilterVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref float CurrentVoiceCenterChannelVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref float CurrentHighFrequencyGainMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref float CurrentPitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref float CurrentVolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref int CurrentNotifyOnLoop() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref int CurrentUseSpatialization() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref float CurrentHighFrequencyGain() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref float CurrentPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref float CurrentVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref Vector CurrentLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref SoundNode CurrentNotifyBufferFinishedHook() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref float CurrAdjustVolumeTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref float AdjustVolumeTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref float AdjustVolumeStopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float AdjustVolumeStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref float FadeOutTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref float FadeOutStopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float FadeOutStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float FadeInTargetVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float FadeInStopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float FadeInStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref Actor LastOwner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref Vector ComponentLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
	// WARNING: Property 'PortalVolume' has the same name as a defined type!
	public @property final auto ref float PlaybackTime() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	// WARNING: Property 'Listener' has the same name as a defined type!
	public @property final auto ref UObject.MultiMap_Mirror SoundNodeResetWaveMap() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 208); }
	public @property final bool bBassBoost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x40) != 0; }
	public @property final bool bBassBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x40; } return val; }
	public @property final bool bCenterChannelOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x20) != 0; }
	public @property final bool bCenterChannelOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x20; } return val; }
	public @property final bool bReverb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
	public @property final bool bReverb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
	public @property final bool bIsMusic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
	public @property final bool bIsMusic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
	public @property final bool bIsUISound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
	public @property final bool bIsUISound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
	public @property final bool bAlwaysPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
	public @property final bool bAlwaysPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
	public @property final bool bEQFilterApplied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bEQFilterApplied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref float LFEBleed() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float StereoBleed() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool bIgnoreForFlushing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x800) != 0; }
	public @property final bool bIgnoreForFlushing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x800; } return val; }
	public @property final bool bPreviewComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x400) != 0; }
	public @property final bool bPreviewComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x400; } return val; }
	public @property final bool bFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x200) != 0; }
	public @property final bool bFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x200; } return val; }
	public @property final bool bWasPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x80) != 0; }
	public @property final bool bWasPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x80; } return val; }
	public @property final bool bWasOccluded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x20) != 0; }
	public @property final bool bWasOccluded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x20; } return val; }
	public @property final bool bShouldRemainActiveIfDropped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x10) != 0; }
	public @property final bool bShouldRemainActiveIfDropped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x10; } return val; }
	public @property final bool bStopWhenOwnerDestroyed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
	public @property final bool bStopWhenOwnerDestroyed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
	public @property final bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
	public @property final bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
	public @property final auto ref SoundNode CueFirstNode() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 92); }
	final void ResetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7895], cast(void*)0, cast(void*)0);
	}
	final void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7915], cast(void*)0, cast(void*)0);
	}
	final void FadeIn(float FadeInDuration, float FadeVolumeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = FadeInDuration;
		*cast(float*)&params[4] = FadeVolumeLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7937], params.ptr, cast(void*)0);
	}
	final void FadeOut(float FadeOutDuration, float FadeVolumeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = FadeOutDuration;
		*cast(float*)&params[4] = FadeVolumeLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7945], params.ptr, cast(void*)0);
	}
	final void OnQueueSubtitles(ScriptArray!(EngineTypes.SubtitleCue) Subtitles, float CueDuration)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(EngineTypes.SubtitleCue)*)params.ptr = Subtitles;
		*cast(float*)&params[12] = CueDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10200], params.ptr, cast(void*)0);
	}
	final void OnAudioFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10202], params.ptr, cast(void*)0);
	}
	final void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10266], cast(void*)0, cast(void*)0);
	}
	final bool IsPlaying()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10267], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void AdjustVolume(float AdjustVolumeDuration, float AdjustVolumeLevel)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = AdjustVolumeDuration;
		*cast(float*)&params[4] = AdjustVolumeLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10273], params.ptr, cast(void*)0);
	}
	final void SetFloatParameter(ScriptName InName, float InFloat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(float*)&params[8] = InFloat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10276], params.ptr, cast(void*)0);
	}
	final void SetWaveParameter(ScriptName InName, SoundNodeWave InWave)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(SoundNodeWave*)&params[8] = InWave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10279], params.ptr, cast(void*)0);
	}
	final void OcclusionChanged(bool bNowOccluded)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOccluded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10290], params.ptr, cast(void*)0);
	}
}

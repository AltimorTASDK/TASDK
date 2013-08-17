module UnrealScript.Engine.AudioComponent;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AudioComponent")); }
	private static __gshared AudioComponent mDefaultProperties;
	@property final static AudioComponent DefaultProperties() { mixin(MGDPC("AudioComponent", "AudioComponent Engine.Default__AudioComponent")); }
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
			ScriptFunction ResetToDefaults() { mixin(MGF("mResetToDefaults", "Function Engine.AudioComponent.ResetToDefaults")); }
			ScriptFunction Play() { mixin(MGF("mPlay", "Function Engine.AudioComponent.Play")); }
			ScriptFunction FadeIn() { mixin(MGF("mFadeIn", "Function Engine.AudioComponent.FadeIn")); }
			ScriptFunction FadeOut() { mixin(MGF("mFadeOut", "Function Engine.AudioComponent.FadeOut")); }
			ScriptFunction OnQueueSubtitles() { mixin(MGF("mOnQueueSubtitles", "Function Engine.AudioComponent.OnQueueSubtitles")); }
			ScriptFunction OnAudioFinished() { mixin(MGF("mOnAudioFinished", "Function Engine.AudioComponent.OnAudioFinished")); }
			ScriptFunction Stop() { mixin(MGF("mStop", "Function Engine.AudioComponent.Stop")); }
			ScriptFunction IsPlaying() { mixin(MGF("mIsPlaying", "Function Engine.AudioComponent.IsPlaying")); }
			ScriptFunction AdjustVolume() { mixin(MGF("mAdjustVolume", "Function Engine.AudioComponent.AdjustVolume")); }
			ScriptFunction SetFloatParameter() { mixin(MGF("mSetFloatParameter", "Function Engine.AudioComponent.SetFloatParameter")); }
			ScriptFunction SetWaveParameter() { mixin(MGF("mSetWaveParameter", "Function Engine.AudioComponent.SetWaveParameter")); }
			ScriptFunction OcclusionChanged() { mixin(MGF("mOcclusionChanged", "Function Engine.AudioComponent.OcclusionChanged")); }
		}
	}
	struct AudioComponentParam
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.AudioComponent.AudioComponentParam")); }
		@property final auto ref
		{
			SoundNodeWave WaveParam() { mixin(MGPS("SoundNodeWave", 12)); }
			float FloatParam() { mixin(MGPS("float", 8)); }
			ScriptName ParamName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector Location() { mixin(MGPC("Vector", 280)); }
			float VolumeMultiplier() { mixin(MGPC("float", 488)); }
			float PitchMultiplier() { mixin(MGPC("float", 492)); }
			float SubtitlePriority() { mixin(MGPC("float", 308)); }
			// WARNING: Property 'SoundCue' has the same name as a defined type!
			ScriptArray!(AudioComponent.AudioComponentParam) InstanceParameters() { mixin(MGPC("ScriptArray!(AudioComponent.AudioComponentParam)", 96)); }
			ScriptArray!(UObject.Pointer) WaveInstances() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 124)); }
			ScriptArray!(ubyte) SoundNodeData() { mixin(MGPC("ScriptArray!(ubyte)", 136)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnQueueSubtitles__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnAudioFinished__Delegate'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewSoundRadius'!
			float LastOcclusionCheckTime() { mixin(MGPC("float", 504)); }
			float OcclusionCheckInterval() { mixin(MGPC("float", 500)); }
			float HighFrequencyGainMultiplier() { mixin(MGPC("float", 496)); }
			int LastReverbVolumeIndex() { mixin(MGPC("int", 484)); }
			ReverbVolume.InteriorSettings LastInteriorSettings() { mixin(MGPC("ReverbVolume.InteriorSettings", 448)); }
			Vector LastLocation() { mixin(MGPC("Vector", 436)); }
			float CurrentInteriorLPF() { mixin(MGPC("float", 432)); }
			float CurrentInteriorVolume() { mixin(MGPC("float", 428)); }
			float SourceInteriorLPF() { mixin(MGPC("float", 424)); }
			float SourceInteriorVolume() { mixin(MGPC("float", 420)); }
			UObject.Double LastUpdateTime() { mixin(MGPC("UObject.Double", 412)); }
			float CurrentRadioFilterVolumeThreshold() { mixin(MGPC("float", 408)); }
			float CurrentRadioFilterVolume() { mixin(MGPC("float", 404)); }
			float CurrentVoiceCenterChannelVolume() { mixin(MGPC("float", 400)); }
			float CurrentHighFrequencyGainMultiplier() { mixin(MGPC("float", 396)); }
			float CurrentPitchMultiplier() { mixin(MGPC("float", 392)); }
			float CurrentVolumeMultiplier() { mixin(MGPC("float", 388)); }
			int CurrentNotifyOnLoop() { mixin(MGPC("int", 384)); }
			int CurrentUseSpatialization() { mixin(MGPC("int", 380)); }
			float CurrentHighFrequencyGain() { mixin(MGPC("float", 376)); }
			float CurrentPitch() { mixin(MGPC("float", 372)); }
			float CurrentVolume() { mixin(MGPC("float", 368)); }
			Vector CurrentLocation() { mixin(MGPC("Vector", 356)); }
			SoundNode CurrentNotifyBufferFinishedHook() { mixin(MGPC("SoundNode", 352)); }
			float CurrAdjustVolumeTargetVolume() { mixin(MGPC("float", 348)); }
			float AdjustVolumeTargetVolume() { mixin(MGPC("float", 344)); }
			float AdjustVolumeStopTime() { mixin(MGPC("float", 340)); }
			float AdjustVolumeStartTime() { mixin(MGPC("float", 336)); }
			float FadeOutTargetVolume() { mixin(MGPC("float", 332)); }
			float FadeOutStopTime() { mixin(MGPC("float", 328)); }
			float FadeOutStartTime() { mixin(MGPC("float", 324)); }
			float FadeInTargetVolume() { mixin(MGPC("float", 320)); }
			float FadeInStopTime() { mixin(MGPC("float", 316)); }
			float FadeInStartTime() { mixin(MGPC("float", 312)); }
			Actor LastOwner() { mixin(MGPC("Actor", 304)); }
			Vector ComponentLocation() { mixin(MGPC("Vector", 292)); }
			// WARNING: Property 'PortalVolume' has the same name as a defined type!
			float PlaybackTime() { mixin(MGPC("float", 272)); }
			// WARNING: Property 'Listener' has the same name as a defined type!
			UObject.MultiMap_Mirror SoundNodeResetWaveMap() { mixin(MGPC("UObject.MultiMap_Mirror", 208)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SoundNodeOffsetMap'!
			float LFEBleed() { mixin(MGPC("float", 116)); }
			float StereoBleed() { mixin(MGPC("float", 112)); }
			SoundNode CueFirstNode() { mixin(MGPC("SoundNode", 92)); }
		}
		bool bUseOwnerLocation() { mixin(MGBPC(108, 0x1)); }
		bool bUseOwnerLocation(bool val) { mixin(MSBPC(108, 0x1)); }
		bool bAllowSpatialization() { mixin(MGBPC(108, 0x100)); }
		bool bAllowSpatialization(bool val) { mixin(MSBPC(108, 0x100)); }
		bool bAutoDestroy() { mixin(MGBPC(108, 0x4)); }
		bool bAutoDestroy(bool val) { mixin(MSBPC(108, 0x4)); }
		bool bSuppressSubtitles() { mixin(MGBPC(108, 0x40)); }
		bool bSuppressSubtitles(bool val) { mixin(MSBPC(108, 0x40)); }
		bool bBassBoost() { mixin(MGBPC(120, 0x40)); }
		bool bBassBoost(bool val) { mixin(MSBPC(120, 0x40)); }
		bool bCenterChannelOnly() { mixin(MGBPC(120, 0x20)); }
		bool bCenterChannelOnly(bool val) { mixin(MSBPC(120, 0x20)); }
		bool bReverb() { mixin(MGBPC(120, 0x10)); }
		bool bReverb(bool val) { mixin(MSBPC(120, 0x10)); }
		bool bIsMusic() { mixin(MGBPC(120, 0x8)); }
		bool bIsMusic(bool val) { mixin(MSBPC(120, 0x8)); }
		bool bIsUISound() { mixin(MGBPC(120, 0x4)); }
		bool bIsUISound(bool val) { mixin(MSBPC(120, 0x4)); }
		bool bAlwaysPlay() { mixin(MGBPC(120, 0x2)); }
		bool bAlwaysPlay(bool val) { mixin(MSBPC(120, 0x2)); }
		bool bEQFilterApplied() { mixin(MGBPC(120, 0x1)); }
		bool bEQFilterApplied(bool val) { mixin(MSBPC(120, 0x1)); }
		bool bIgnoreForFlushing() { mixin(MGBPC(108, 0x800)); }
		bool bIgnoreForFlushing(bool val) { mixin(MSBPC(108, 0x800)); }
		bool bPreviewComponent() { mixin(MGBPC(108, 0x400)); }
		bool bPreviewComponent(bool val) { mixin(MSBPC(108, 0x400)); }
		bool bFinished() { mixin(MGBPC(108, 0x200)); }
		bool bFinished(bool val) { mixin(MSBPC(108, 0x200)); }
		bool bWasPlaying() { mixin(MGBPC(108, 0x80)); }
		bool bWasPlaying(bool val) { mixin(MSBPC(108, 0x80)); }
		bool bWasOccluded() { mixin(MGBPC(108, 0x20)); }
		bool bWasOccluded(bool val) { mixin(MSBPC(108, 0x20)); }
		bool bShouldRemainActiveIfDropped() { mixin(MGBPC(108, 0x10)); }
		bool bShouldRemainActiveIfDropped(bool val) { mixin(MSBPC(108, 0x10)); }
		bool bStopWhenOwnerDestroyed() { mixin(MGBPC(108, 0x8)); }
		bool bStopWhenOwnerDestroyed(bool val) { mixin(MSBPC(108, 0x8)); }
		bool bAutoPlay() { mixin(MGBPC(108, 0x2)); }
		bool bAutoPlay(bool val) { mixin(MSBPC(108, 0x2)); }
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

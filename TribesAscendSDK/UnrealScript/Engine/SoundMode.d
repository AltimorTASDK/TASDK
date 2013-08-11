module UnrealScript.Engine.SoundMode;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Core.UObject;

extern(C++) interface SoundMode : UObject
{
	struct SoundClassAdjuster
	{
		public @property final auto ref float VoiceCenterChannelVolumeAdjuster() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __VoiceCenterChannelVolumeAdjuster[4];
		public @property final bool bApplyToChildren() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool bApplyToChildren(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __bApplyToChildren[4];
		public @property final auto ref float PitchAdjuster() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __PitchAdjuster[4];
		public @property final auto ref float VolumeAdjuster() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __VolumeAdjuster[4];
		// WARNING: Property 'SoundClass' has the same name as a defined type!
		public @property final auto ref AudioDevice.ESoundClassName SoundClassName() { return *cast(AudioDevice.ESoundClassName*)(cast(size_t)&this + 0); }
		private ubyte __SoundClassName[1];
	}
	struct AudioEQEffect
	{
		public @property final auto ref float LFGain() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __LFGain[4];
		public @property final auto ref float LFFrequency() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __LFFrequency[4];
		public @property final auto ref float MFGain() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __MFGain[4];
		public @property final auto ref float MFBandwidth() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __MFBandwidth[4];
		public @property final auto ref float MFCutoffFrequency() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __MFCutoffFrequency[4];
		public @property final auto ref float HFGain() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __HFGain[4];
		public @property final auto ref float HFFrequency() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __HFFrequency[4];
		public @property final auto ref UObject.Double RootTime() { return *cast(UObject.Double*)(cast(size_t)&this + 0); }
		private ubyte __RootTime[8];
	}
	public @property final auto ref ScriptArray!(SoundMode.SoundClassAdjuster) SoundClassEffects() { return *cast(ScriptArray!(SoundMode.SoundClassAdjuster)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float FadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float FadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float InitialDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref SoundMode.AudioEQEffect EQSettings() { return *cast(SoundMode.AudioEQEffect*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bApplyEQ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bApplyEQ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}

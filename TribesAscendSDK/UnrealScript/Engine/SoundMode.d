module UnrealScript.Engine.SoundMode;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Core.UObject;

extern(C++) interface SoundMode : UObject
{
public extern(D):
	struct SoundClassAdjuster
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final
		{
			auto ref
			{
				float VoiceCenterChannelVolumeAdjuster() { return *cast(float*)(cast(size_t)&this + 24); }
				float PitchAdjuster() { return *cast(float*)(cast(size_t)&this + 16); }
				float VolumeAdjuster() { return *cast(float*)(cast(size_t)&this + 12); }
				// WARNING: Property 'SoundClass' has the same name as a defined type!
				AudioDevice.ESoundClassName SoundClassName() { return *cast(AudioDevice.ESoundClassName*)(cast(size_t)&this + 0); }
			}
			bool bApplyToChildren() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool bApplyToChildren(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	struct AudioEQEffect
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final auto ref
		{
			float LFGain() { return *cast(float*)(cast(size_t)&this + 32); }
			float LFFrequency() { return *cast(float*)(cast(size_t)&this + 28); }
			float MFGain() { return *cast(float*)(cast(size_t)&this + 24); }
			float MFBandwidth() { return *cast(float*)(cast(size_t)&this + 20); }
			float MFCutoffFrequency() { return *cast(float*)(cast(size_t)&this + 16); }
			float HFGain() { return *cast(float*)(cast(size_t)&this + 12); }
			float HFFrequency() { return *cast(float*)(cast(size_t)&this + 8); }
			UObject.Double RootTime() { return *cast(UObject.Double*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SoundMode.SoundClassAdjuster) SoundClassEffects() { return *cast(ScriptArray!(SoundMode.SoundClassAdjuster)*)(cast(size_t)cast(void*)this + 100); }
			float FadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float FadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float InitialDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			SoundMode.AudioEQEffect EQSettings() { return *cast(SoundMode.AudioEQEffect*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bApplyEQ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bApplyEQ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}

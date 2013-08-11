module UnrealScript.GameFramework.GameWaveForms;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface GameWaveForms : UObject
{
	public @property final auto ref ForceFeedbackWaveform CameraShakeBigShort() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ForceFeedbackWaveform CameraShakeBigLong() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ForceFeedbackWaveform CameraShakeMediumShort() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ForceFeedbackWaveform CameraShakeMediumLong() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 64); }
}

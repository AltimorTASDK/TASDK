module UnrealScript.GameFramework.GameWaveForms;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface GameWaveForms : UObject
{
public extern(D):
	@property final auto ref
	{
		ForceFeedbackWaveform CameraShakeBigShort() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 68); }
		ForceFeedbackWaveform CameraShakeBigLong() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 72); }
		ForceFeedbackWaveform CameraShakeMediumShort() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 60); }
		ForceFeedbackWaveform CameraShakeMediumLong() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 64); }
	}
}

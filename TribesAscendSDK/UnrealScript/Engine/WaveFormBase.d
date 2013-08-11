module UnrealScript.Engine.WaveFormBase;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface WaveFormBase : UObject
{
	public @property final auto ref ForceFeedbackWaveform TheWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 60); }
}

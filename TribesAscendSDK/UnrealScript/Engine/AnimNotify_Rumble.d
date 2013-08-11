module UnrealScript.Engine.AnimNotify_Rumble;

import ScriptClasses;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Rumble : AnimNotify
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptClass PredefinedWaveForm() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
			ForceFeedbackWaveform WaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 68); }
			float EffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bCheckForBasedPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bCheckForBasedPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}

module UnrealScript.Engine.AnimationCompressionAlgorithm_PerTrackCompression;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

extern(C++) interface AnimationCompressionAlgorithm_PerTrackCompression : AnimationCompressionAlgorithm_RemoveLinearKeys
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimSequence.AnimationCompressionFormat) AllowedRotationFormats() { return *cast(ScriptArray!(AnimSequence.AnimationCompressionFormat)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(AnimSequence.AnimationCompressionFormat) AllowedTranslationFormats() { return *cast(ScriptArray!(AnimSequence.AnimationCompressionFormat)*)(cast(size_t)cast(void*)this + 132); }
			UObject.Pointer PerReductionCachedData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 184); }
			float PerturbationProbeSize() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float MaxErrorPerTrackRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float TranslationErrorSourceRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float RotationErrorSourceRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float ParentingDivisorExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float ParentingDivisor() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			int TrackHeightBias() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int MinKeysForResampling() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			float ResampledFramerate() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float MaxAngleDiffBitwise() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float MaxPosDiffBitwise() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float MaxZeroingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bUseAdaptiveError2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x8) != 0; }
		bool bUseAdaptiveError2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x8; } return val; }
		bool bUseOverrideForEndEffectors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x4) != 0; }
		bool bUseOverrideForEndEffectors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x4; } return val; }
		bool bUseAdaptiveError() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x2) != 0; }
		bool bUseAdaptiveError(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x2; } return val; }
		bool bResampleAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
		bool bResampleAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	}
}

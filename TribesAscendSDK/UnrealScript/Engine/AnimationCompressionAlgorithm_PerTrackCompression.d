module UnrealScript.Engine.AnimationCompressionAlgorithm_PerTrackCompression;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

extern(C++) interface AnimationCompressionAlgorithm_PerTrackCompression : AnimationCompressionAlgorithm_RemoveLinearKeys
{
	public @property final auto ref ScriptArray!(AnimSequence.AnimationCompressionFormat) AllowedRotationFormats() { return *cast(ScriptArray!(AnimSequence.AnimationCompressionFormat)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(AnimSequence.AnimationCompressionFormat) AllowedTranslationFormats() { return *cast(ScriptArray!(AnimSequence.AnimationCompressionFormat)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref UObject.Pointer PerReductionCachedData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float PerturbationProbeSize() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float MaxErrorPerTrackRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float TranslationErrorSourceRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float RotationErrorSourceRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float ParentingDivisorExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float ParentingDivisor() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int TrackHeightBias() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int MinKeysForResampling() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float ResampledFramerate() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bUseAdaptiveError2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x8) != 0; }
	public @property final bool bUseAdaptiveError2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x8; } return val; }
	public @property final bool bUseOverrideForEndEffectors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x4) != 0; }
	public @property final bool bUseOverrideForEndEffectors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x4; } return val; }
	public @property final bool bUseAdaptiveError() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x2) != 0; }
	public @property final bool bUseAdaptiveError(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x2; } return val; }
	public @property final bool bResampleAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
	public @property final bool bResampleAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	public @property final auto ref float MaxAngleDiffBitwise() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float MaxPosDiffBitwise() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float MaxZeroingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
}

module UnrealScript.Engine.AnimationCompressionAlgorithm_PerTrackCompression;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

extern(C++) interface AnimationCompressionAlgorithm_PerTrackCompression : AnimationCompressionAlgorithm_RemoveLinearKeys
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimationCompressionAlgorithm_PerTrackCompression")); }
	private static __gshared AnimationCompressionAlgorithm_PerTrackCompression mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_PerTrackCompression DefaultProperties() { mixin(MGDPC("AnimationCompressionAlgorithm_PerTrackCompression", "AnimationCompressionAlgorithm_PerTrackCompression Engine.Default__AnimationCompressionAlgorithm_PerTrackCompression")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimSequence.AnimationCompressionFormat) AllowedRotationFormats() { mixin(MGPC("ScriptArray!(AnimSequence.AnimationCompressionFormat)", 120)); }
			ScriptArray!(AnimSequence.AnimationCompressionFormat) AllowedTranslationFormats() { mixin(MGPC("ScriptArray!(AnimSequence.AnimationCompressionFormat)", 132)); }
			Pointer PerReductionCachedData() { mixin(MGPC("Pointer", 184)); }
			float PerturbationProbeSize() { mixin(MGPC("float", 180)); }
			float MaxErrorPerTrackRatio() { mixin(MGPC("float", 176)); }
			float TranslationErrorSourceRatio() { mixin(MGPC("float", 172)); }
			float RotationErrorSourceRatio() { mixin(MGPC("float", 168)); }
			float ParentingDivisorExponent() { mixin(MGPC("float", 164)); }
			float ParentingDivisor() { mixin(MGPC("float", 160)); }
			int TrackHeightBias() { mixin(MGPC("int", 156)); }
			int MinKeysForResampling() { mixin(MGPC("int", 152)); }
			float ResampledFramerate() { mixin(MGPC("float", 148)); }
			float MaxAngleDiffBitwise() { mixin(MGPC("float", 116)); }
			float MaxPosDiffBitwise() { mixin(MGPC("float", 112)); }
			float MaxZeroingThreshold() { mixin(MGPC("float", 108)); }
		}
		bool bUseAdaptiveError2() { mixin(MGBPC(144, 0x8)); }
		bool bUseAdaptiveError2(bool val) { mixin(MSBPC(144, 0x8)); }
		bool bUseOverrideForEndEffectors() { mixin(MGBPC(144, 0x4)); }
		bool bUseOverrideForEndEffectors(bool val) { mixin(MSBPC(144, 0x4)); }
		bool bUseAdaptiveError() { mixin(MGBPC(144, 0x2)); }
		bool bUseAdaptiveError(bool val) { mixin(MSBPC(144, 0x2)); }
		bool bResampleAnimation() { mixin(MGBPC(144, 0x1)); }
		bool bResampleAnimation(bool val) { mixin(MSBPC(144, 0x1)); }
	}
}

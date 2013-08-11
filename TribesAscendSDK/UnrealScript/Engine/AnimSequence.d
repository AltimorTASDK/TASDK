module UnrealScript.Engine.AnimSequence;

import ScriptClasses;
import UnrealScript.Engine.AnimMetaData;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimationCompressionAlgorithm;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimSequence : UObject
{
	enum AnimationCompressionFormat : ubyte
	{
		ACF_None = 0,
		ACF_Float96NoW = 1,
		ACF_Fixed48NoW = 2,
		ACF_IntervalFixed32NoW = 3,
		ACF_Fixed32NoW = 4,
		ACF_Float32NoW = 5,
		ACF_Identity = 6,
		ACF_MAX = 7,
	}
	enum AnimationKeyFormat : ubyte
	{
		AKF_ConstantKeyLerp = 0,
		AKF_VariableKeyLerp = 1,
		AKF_PerTrackCompression = 2,
		AKF_MAX = 3,
	}
	struct CompressedTrack
	{
		public @property final auto ref ScriptArray!(ubyte) ByteStream() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
		private ubyte __ByteStream[12];
		public @property final auto ref ScriptArray!(float) Times() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		private ubyte __Times[12];
		public @property final auto ref float Ranges() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __Ranges[4];
		public @property final auto ref float Mins() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __Mins[4];
	}
	struct AnimTag
	{
		public @property final auto ref ScriptArray!(ScriptString) Contains() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 12); }
		private ubyte __Contains[12];
		public @property final auto ref ScriptString Tag() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Tag[12];
	}
	struct CurveTrack
	{
		public @property final auto ref ScriptName CurveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __CurveName[8];
		public @property final auto ref ScriptArray!(float) CurveWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 8); }
		private ubyte __CurveWeights[12];
	}
	struct RotationTrack
	{
		public @property final auto ref ScriptArray!(UObject.Quat) RotKeys() { return *cast(ScriptArray!(UObject.Quat)*)(cast(size_t)&this + 0); }
		private ubyte __RotKeys[12];
		public @property final auto ref ScriptArray!(float) Times() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		private ubyte __Times[12];
	}
	struct TranslationTrack
	{
		public @property final auto ref ScriptArray!(Vector) PosKeys() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 0); }
		private ubyte __PosKeys[12];
		public @property final auto ref ScriptArray!(float) Times() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		private ubyte __Times[12];
	}
	struct SkelControlModifier
	{
		public @property final auto ref ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SkelControlName[8];
		public @property final auto ref ScriptArray!(AnimSequence.TimeModifier) Modifiers() { return *cast(ScriptArray!(AnimSequence.TimeModifier)*)(cast(size_t)&this + 8); }
		private ubyte __Modifiers[12];
	}
	struct TimeModifier
	{
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
		public @property final auto ref float TargetStrength() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TargetStrength[4];
	}
	struct AnimNotifyEvent
	{
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
		public @property final auto ref AnimNotify Notify() { return *cast(AnimNotify*)(cast(size_t)&this + 4); }
		private ubyte __Notify[4];
		public @property final auto ref ScriptName Comment() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __Comment[8];
		public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Duration[4];
	}
	struct RawAnimSequenceTrack
	{
		public @property final auto ref ScriptArray!(Vector) PosKeys() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 0); }
		private ubyte __PosKeys[12];
		public @property final auto ref ScriptArray!(UObject.Quat) RotKeys() { return *cast(ScriptArray!(UObject.Quat)*)(cast(size_t)&this + 12); }
		private ubyte __RotKeys[12];
	}
	public @property final auto ref float SequenceLength() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float RateScale() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptName SequenceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(AnimSequence.AnimNotifyEvent) Notifies() { return *cast(ScriptArray!(AnimSequence.AnimNotifyEvent)*)(cast(size_t)cast(void*)this + 68); }
	// WARNING: Property 'MetaData' has the same name as a defined type!
	public @property final auto ref ScriptArray!(AnimSequence.SkelControlModifier) BoneControlModifiers() { return *cast(ScriptArray!(AnimSequence.SkelControlModifier)*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int NumFrames() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bNoLoopingInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bNoLoopingInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final bool bIsAdditive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
	public @property final bool bIsAdditive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
	public @property final bool bAdditiveBuiltLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x4) != 0; }
	public @property final bool bAdditiveBuiltLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x4; } return val; }
	public @property final bool bDoNotOverrideCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x8) != 0; }
	public @property final bool bDoNotOverrideCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x8; } return val; }
	public @property final bool bHasBeenUsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x10) != 0; }
	public @property final bool bHasBeenUsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x10; } return val; }
	public @property final auto ref ScriptArray!(AnimSequence.RawAnimSequenceTrack) RawAnimData() { return *cast(ScriptArray!(AnimSequence.RawAnimSequenceTrack)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(AnimSequence.RawAnimSequenceTrack) RawAnimationData() { return *cast(ScriptArray!(AnimSequence.RawAnimSequenceTrack)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(AnimSequence.TranslationTrack) TranslationData() { return *cast(ScriptArray!(AnimSequence.TranslationTrack)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptArray!(AnimSequence.RotationTrack) RotationData() { return *cast(ScriptArray!(AnimSequence.RotationTrack)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(AnimSequence.CurveTrack) CurveData() { return *cast(ScriptArray!(AnimSequence.CurveTrack)*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref AnimationCompressionAlgorithm CompressionScheme() { return *cast(AnimationCompressionAlgorithm*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref AnimSequence.AnimationCompressionFormat TranslationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref AnimSequence.AnimationCompressionFormat RotationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 185); }
	public @property final auto ref AnimSequence.AnimationKeyFormat KeyEncodingFormat() { return *cast(AnimSequence.AnimationKeyFormat*)(cast(size_t)cast(void*)this + 186); }
	public @property final auto ref ScriptArray!(int) CompressedTrackOffsets() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptArray!(ubyte) CompressedByteStream() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref UObject.Pointer TranslationCodec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref UObject.Pointer RotationCodec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) AdditiveRefPose() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ScriptArray!(AnimSequence.RawAnimSequenceTrack) AdditiveBasePose() { return *cast(ScriptArray!(AnimSequence.RawAnimSequenceTrack)*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptName AdditiveRefName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptArray!(AnimSequence) AdditiveBasePoseAnimSeq() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptArray!(AnimSequence) AdditiveTargetPoseAnimSeq() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptArray!(AnimSequence) RelatedAdditiveAnimSeqs() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref int EncodingPkgVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref int CompressCommandletVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float UseScore() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptArray!(AnimSequence.AnimTag) AnimTags() { return *cast(ScriptArray!(AnimSequence.AnimTag)*)(cast(size_t)cast(void*)this + 300); }
	final float GetNotifyTimeByClass(ScriptClass NotifyClass, float PlayRate, float StartPosition, AnimNotify* out_Notify, float* out_Duration)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NotifyClass;
		*cast(float*)&params[4] = PlayRate;
		*cast(float*)&params[8] = StartPosition;
		*cast(AnimNotify*)&params[12] = *out_Notify;
		*cast(float*)&params[16] = *out_Duration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10514], params.ptr, cast(void*)0);
		*out_Notify = *cast(AnimNotify*)&params[12];
		*out_Duration = *cast(float*)&params[16];
		return *cast(float*)&params[20];
	}
}

module UnrealScript.Engine.AnimSequence;

import ScriptClasses;
import UnrealScript.Engine.AnimMetaData;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimationCompressionAlgorithm;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimSequence : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimSequence")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetNotifyTimeByClass;
		public @property static final ScriptFunction GetNotifyTimeByClass() { return mGetNotifyTimeByClass ? mGetNotifyTimeByClass : (mGetNotifyTimeByClass = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimSequence.GetNotifyTimeByClass")); }
	}
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
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.CompressedTrack")); }
		@property final auto ref
		{
			ScriptArray!(ubyte) ByteStream() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
			ScriptArray!(float) Times() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
			float Ranges() { return *cast(float*)(cast(size_t)&this + 36); }
			float Mins() { return *cast(float*)(cast(size_t)&this + 24); }
		}
	}
	struct AnimTag
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.AnimTag")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) Contains() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 12); }
			ScriptString Tag() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct CurveTrack
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.CurveTrack")); }
		@property final auto ref
		{
			ScriptName CurveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptArray!(float) CurveWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 8); }
		}
	}
	struct RotationTrack
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.RotationTrack")); }
		@property final auto ref
		{
			ScriptArray!(UObject.Quat) RotKeys() { return *cast(ScriptArray!(UObject.Quat)*)(cast(size_t)&this + 0); }
			ScriptArray!(float) Times() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		}
	}
	struct TranslationTrack
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.TranslationTrack")); }
		@property final auto ref
		{
			ScriptArray!(Vector) PosKeys() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 0); }
			ScriptArray!(float) Times() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		}
	}
	struct SkelControlModifier
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.SkelControlModifier")); }
		@property final auto ref
		{
			ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptArray!(AnimSequence.TimeModifier) Modifiers() { return *cast(ScriptArray!(AnimSequence.TimeModifier)*)(cast(size_t)&this + 8); }
		}
	}
	struct TimeModifier
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.TimeModifier")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
			float TargetStrength() { return *cast(float*)(cast(size_t)&this + 4); }
		}
	}
	struct AnimNotifyEvent
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.AnimNotifyEvent")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
			AnimNotify Notify() { return *cast(AnimNotify*)(cast(size_t)&this + 4); }
			ScriptName Comment() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			float Duration() { return *cast(float*)(cast(size_t)&this + 16); }
		}
	}
	struct RawAnimSequenceTrack
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimSequence.RawAnimSequenceTrack")); }
		@property final auto ref
		{
			ScriptArray!(Vector) PosKeys() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 0); }
			ScriptArray!(UObject.Quat) RotKeys() { return *cast(ScriptArray!(UObject.Quat)*)(cast(size_t)&this + 12); }
		}
	}
	@property final
	{
		auto ref
		{
			float SequenceLength() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float RateScale() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			ScriptName SequenceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
			ScriptArray!(AnimSequence.AnimNotifyEvent) Notifies() { return *cast(ScriptArray!(AnimSequence.AnimNotifyEvent)*)(cast(size_t)cast(void*)this + 68); }
			// WARNING: Property 'MetaData' has the same name as a defined type!
			ScriptArray!(AnimSequence.SkelControlModifier) BoneControlModifiers() { return *cast(ScriptArray!(AnimSequence.SkelControlModifier)*)(cast(size_t)cast(void*)this + 92); }
			int NumFrames() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			ScriptArray!(AnimSequence.RawAnimSequenceTrack) RawAnimData() { return *cast(ScriptArray!(AnimSequence.RawAnimSequenceTrack)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(AnimSequence.RawAnimSequenceTrack) RawAnimationData() { return *cast(ScriptArray!(AnimSequence.RawAnimSequenceTrack)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(AnimSequence.TranslationTrack) TranslationData() { return *cast(ScriptArray!(AnimSequence.TranslationTrack)*)(cast(size_t)cast(void*)this + 144); }
			ScriptArray!(AnimSequence.RotationTrack) RotationData() { return *cast(ScriptArray!(AnimSequence.RotationTrack)*)(cast(size_t)cast(void*)this + 156); }
			ScriptArray!(AnimSequence.CurveTrack) CurveData() { return *cast(ScriptArray!(AnimSequence.CurveTrack)*)(cast(size_t)cast(void*)this + 168); }
			AnimationCompressionAlgorithm CompressionScheme() { return *cast(AnimationCompressionAlgorithm*)(cast(size_t)cast(void*)this + 180); }
			AnimSequence.AnimationCompressionFormat TranslationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 184); }
			AnimSequence.AnimationCompressionFormat RotationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 185); }
			AnimSequence.AnimationKeyFormat KeyEncodingFormat() { return *cast(AnimSequence.AnimationKeyFormat*)(cast(size_t)cast(void*)this + 186); }
			ScriptArray!(int) CompressedTrackOffsets() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 188); }
			ScriptArray!(ubyte) CompressedByteStream() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 200); }
			UObject.Pointer TranslationCodec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 212); }
			UObject.Pointer RotationCodec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 216); }
			ScriptArray!(UObject.BoneAtom) AdditiveRefPose() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 220); }
			ScriptArray!(AnimSequence.RawAnimSequenceTrack) AdditiveBasePose() { return *cast(ScriptArray!(AnimSequence.RawAnimSequenceTrack)*)(cast(size_t)cast(void*)this + 232); }
			ScriptName AdditiveRefName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 244); }
			ScriptArray!(AnimSequence) AdditiveBasePoseAnimSeq() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 252); }
			ScriptArray!(AnimSequence) AdditiveTargetPoseAnimSeq() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 264); }
			ScriptArray!(AnimSequence) RelatedAdditiveAnimSeqs() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 276); }
			int EncodingPkgVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
			int CompressCommandletVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
			float UseScore() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			ScriptArray!(AnimSequence.AnimTag) AnimTags() { return *cast(ScriptArray!(AnimSequence.AnimTag)*)(cast(size_t)cast(void*)this + 300); }
		}
		bool bNoLoopingInterpolation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bNoLoopingInterpolation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
		bool bIsAdditive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bIsAdditive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool bAdditiveBuiltLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x4) != 0; }
		bool bAdditiveBuiltLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x4; } return val; }
		bool bDoNotOverrideCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x8) != 0; }
		bool bDoNotOverrideCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x8; } return val; }
		bool bHasBeenUsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x10) != 0; }
		bool bHasBeenUsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x10; } return val; }
	}
	final float GetNotifyTimeByClass(ScriptClass NotifyClass, float PlayRate, float StartPosition, AnimNotify* out_Notify, float* out_Duration)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NotifyClass;
		*cast(float*)&params[4] = PlayRate;
		*cast(float*)&params[8] = StartPosition;
		*cast(AnimNotify*)&params[12] = *out_Notify;
		*cast(float*)&params[16] = *out_Duration;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNotifyTimeByClass, params.ptr, cast(void*)0);
		*out_Notify = *cast(AnimNotify*)&params[12];
		*out_Duration = *cast(float*)&params[16];
		return *cast(float*)&params[20];
	}
}

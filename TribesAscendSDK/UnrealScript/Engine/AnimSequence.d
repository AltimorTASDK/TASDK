module UnrealScript.Engine.AnimSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimMetaData;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimationCompressionAlgorithm;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimSequence : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimSequence")()); }
	private static __gshared AnimSequence mDefaultProperties;
	@property final static AnimSequence DefaultProperties() { mixin(MGDPC!(AnimSequence, "AnimSequence Engine.Default__AnimSequence")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetNotifyTimeByClass;
		public @property static final ScriptFunction GetNotifyTimeByClass() { mixin(MGF!("mGetNotifyTimeByClass", "Function Engine.AnimSequence.GetNotifyTimeByClass")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.CompressedTrack")()); }
		@property final auto ref
		{
			ScriptArray!(ubyte) ByteStream() { mixin(MGPS!(ScriptArray!(ubyte), 0)()); }
			ScriptArray!(float) Times() { mixin(MGPS!(ScriptArray!(float), 12)()); }
			float Ranges() { mixin(MGPS!(float, 36)()); }
			float Mins() { mixin(MGPS!(float, 24)()); }
		}
	}
	struct AnimTag
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.AnimTag")()); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) Contains() { mixin(MGPS!(ScriptArray!(ScriptString), 12)()); }
			ScriptString Tag() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	struct CurveTrack
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.CurveTrack")()); }
		@property final auto ref
		{
			ScriptName CurveName() { mixin(MGPS!(ScriptName, 0)()); }
			ScriptArray!(float) CurveWeights() { mixin(MGPS!(ScriptArray!(float), 8)()); }
		}
	}
	struct RotationTrack
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.RotationTrack")()); }
		@property final auto ref
		{
			ScriptArray!(UObject.Quat) RotKeys() { mixin(MGPS!(ScriptArray!(UObject.Quat), 0)()); }
			ScriptArray!(float) Times() { mixin(MGPS!(ScriptArray!(float), 12)()); }
		}
	}
	struct TranslationTrack
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.TranslationTrack")()); }
		@property final auto ref
		{
			ScriptArray!(Vector) PosKeys() { mixin(MGPS!(ScriptArray!(Vector), 0)()); }
			ScriptArray!(float) Times() { mixin(MGPS!(ScriptArray!(float), 12)()); }
		}
	}
	struct SkelControlModifier
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.SkelControlModifier")()); }
		@property final auto ref
		{
			ScriptName SkelControlName() { mixin(MGPS!(ScriptName, 0)()); }
			ScriptArray!(AnimSequence.TimeModifier) Modifiers() { mixin(MGPS!(ScriptArray!(AnimSequence.TimeModifier), 8)()); }
		}
	}
	struct TimeModifier
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.TimeModifier")()); }
		@property final auto ref
		{
			float Time() { mixin(MGPS!(float, 0)()); }
			float TargetStrength() { mixin(MGPS!(float, 4)()); }
		}
	}
	struct AnimNotifyEvent
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.AnimNotifyEvent")()); }
		@property final auto ref
		{
			float Time() { mixin(MGPS!(float, 0)()); }
			AnimNotify Notify() { mixin(MGPS!(AnimNotify, 4)()); }
			ScriptName Comment() { mixin(MGPS!(ScriptName, 8)()); }
			float Duration() { mixin(MGPS!(float, 16)()); }
		}
	}
	struct RawAnimSequenceTrack
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimSequence.RawAnimSequenceTrack")()); }
		@property final auto ref
		{
			ScriptArray!(Vector) PosKeys() { mixin(MGPS!(ScriptArray!(Vector), 0)()); }
			ScriptArray!(UObject.Quat) RotKeys() { mixin(MGPS!(ScriptArray!(UObject.Quat), 12)()); }
		}
	}
	@property final
	{
		auto ref
		{
			float SequenceLength() { mixin(MGPC!(float, 104)()); }
			float RateScale() { mixin(MGPC!(float, 112)()); }
			ScriptName SequenceName() { mixin(MGPC!(ScriptName, 60)()); }
			ScriptArray!(AnimSequence.AnimNotifyEvent) Notifies() { mixin(MGPC!(ScriptArray!(AnimSequence.AnimNotifyEvent), 68)()); }
			// WARNING: Property 'MetaData' has the same name as a defined type!
			ScriptArray!(AnimSequence.SkelControlModifier) BoneControlModifiers() { mixin(MGPC!(ScriptArray!(AnimSequence.SkelControlModifier), 92)()); }
			int NumFrames() { mixin(MGPC!(int, 108)()); }
			ScriptArray!(AnimSequence.RawAnimSequenceTrack) RawAnimData() { mixin(MGPC!(ScriptArray!(AnimSequence.RawAnimSequenceTrack), 120)()); }
			ScriptArray!(AnimSequence.RawAnimSequenceTrack) RawAnimationData() { mixin(MGPC!(ScriptArray!(AnimSequence.RawAnimSequenceTrack), 132)()); }
			ScriptArray!(AnimSequence.TranslationTrack) TranslationData() { mixin(MGPC!(ScriptArray!(AnimSequence.TranslationTrack), 144)()); }
			ScriptArray!(AnimSequence.RotationTrack) RotationData() { mixin(MGPC!(ScriptArray!(AnimSequence.RotationTrack), 156)()); }
			ScriptArray!(AnimSequence.CurveTrack) CurveData() { mixin(MGPC!(ScriptArray!(AnimSequence.CurveTrack), 168)()); }
			AnimationCompressionAlgorithm CompressionScheme() { mixin(MGPC!(AnimationCompressionAlgorithm, 180)()); }
			AnimSequence.AnimationCompressionFormat TranslationCompressionFormat() { mixin(MGPC!(AnimSequence.AnimationCompressionFormat, 184)()); }
			AnimSequence.AnimationCompressionFormat RotationCompressionFormat() { mixin(MGPC!(AnimSequence.AnimationCompressionFormat, 185)()); }
			AnimSequence.AnimationKeyFormat KeyEncodingFormat() { mixin(MGPC!(AnimSequence.AnimationKeyFormat, 186)()); }
			ScriptArray!(int) CompressedTrackOffsets() { mixin(MGPC!(ScriptArray!(int), 188)()); }
			ScriptArray!(ubyte) CompressedByteStream() { mixin(MGPC!(ScriptArray!(ubyte), 200)()); }
			UObject.Pointer TranslationCodec() { mixin(MGPC!(UObject.Pointer, 212)()); }
			UObject.Pointer RotationCodec() { mixin(MGPC!(UObject.Pointer, 216)()); }
			ScriptArray!(UObject.BoneAtom) AdditiveRefPose() { mixin(MGPC!(ScriptArray!(UObject.BoneAtom), 220)()); }
			ScriptArray!(AnimSequence.RawAnimSequenceTrack) AdditiveBasePose() { mixin(MGPC!(ScriptArray!(AnimSequence.RawAnimSequenceTrack), 232)()); }
			ScriptName AdditiveRefName() { mixin(MGPC!(ScriptName, 244)()); }
			ScriptArray!(AnimSequence) AdditiveBasePoseAnimSeq() { mixin(MGPC!(ScriptArray!(AnimSequence), 252)()); }
			ScriptArray!(AnimSequence) AdditiveTargetPoseAnimSeq() { mixin(MGPC!(ScriptArray!(AnimSequence), 264)()); }
			ScriptArray!(AnimSequence) RelatedAdditiveAnimSeqs() { mixin(MGPC!(ScriptArray!(AnimSequence), 276)()); }
			int EncodingPkgVersion() { mixin(MGPC!(int, 288)()); }
			int CompressCommandletVersion() { mixin(MGPC!(int, 292)()); }
			float UseScore() { mixin(MGPC!(float, 296)()); }
			ScriptArray!(AnimSequence.AnimTag) AnimTags() { mixin(MGPC!(ScriptArray!(AnimSequence.AnimTag), 300)()); }
		}
		bool bNoLoopingInterpolation() { mixin(MGBPC!(116, 0x1)()); }
		bool bNoLoopingInterpolation(bool val) { mixin(MSBPC!(116, 0x1)()); }
		bool bIsAdditive() { mixin(MGBPC!(116, 0x2)()); }
		bool bIsAdditive(bool val) { mixin(MSBPC!(116, 0x2)()); }
		bool bAdditiveBuiltLooping() { mixin(MGBPC!(116, 0x4)()); }
		bool bAdditiveBuiltLooping(bool val) { mixin(MSBPC!(116, 0x4)()); }
		bool bDoNotOverrideCompression() { mixin(MGBPC!(116, 0x8)()); }
		bool bDoNotOverrideCompression(bool val) { mixin(MSBPC!(116, 0x8)()); }
		bool bHasBeenUsed() { mixin(MGBPC!(116, 0x10)()); }
		bool bHasBeenUsed(bool val) { mixin(MSBPC!(116, 0x10)()); }
	}
	final float GetNotifyTimeByClass(ScriptClass NotifyClass, float PlayRate, float StartPosition, AnimNotify* out_Notify, float* out_Duration)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NotifyClass;
		*cast(float*)&params[4] = PlayRate;
		*cast(float*)&params[8] = StartPosition;
		*cast(AnimNotify*)&params[12] = out_Notify;
		*cast(float*)&params[16] = out_Duration;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNotifyTimeByClass, params.ptr, cast(void*)0);
		*out_Notify = *cast(AnimNotify*)&params[12];
		*out_Duration = *cast(float*)&params[16];
		return *cast(float*)&params[20];
	}
}

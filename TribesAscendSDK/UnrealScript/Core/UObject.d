module UnrealScript.Core.UObject;

import ScriptClasses;
import UnrealScript.Helpers;

extern(C++) interface UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Object")); }
	private static __gshared UObject mDefaultProperties;
	@property final static UObject DefaultProperties() { mixin(MGDPC("UObject", "Object Core.Default__Object")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBuildChangelistNumber;
			ScriptFunction mGetEngineVersion;
			ScriptFunction mGetSystemTime;
			ScriptFunction mTimeStamp;
			ScriptFunction mTransformVectorByRotation;
			ScriptFunction mGetPackageName;
			ScriptFunction mIsPendingKill;
			ScriptFunction mByteToFloat;
			ScriptFunction mFloatToByte;
			ScriptFunction mUnwindHeading;
			ScriptFunction mFindDeltaAngle;
			ScriptFunction mGetHeadingAngle;
			ScriptFunction mGetAngularDegreesFromRadians;
			ScriptFunction mAcos;
			ScriptFunction mGetAngularFromDotDist;
			ScriptFunction mGetAngularDistance;
			ScriptFunction mGetDotDistance;
			ScriptFunction mPointProjectToPlane;
			ScriptFunction mPointDistToPlane;
			ScriptFunction mPointDistToSegment;
			ScriptFunction mPointDistToLine;
			ScriptFunction mGetPerObjectConfigSections;
			ScriptFunction mStaticSaveConfig;
			ScriptFunction mSaveConfig;
			ScriptFunction mFindObject;
			ScriptFunction mDynamicLoadObject;
			ScriptFunction mGetEnum;
			ScriptFunction mDisable;
			ScriptFunction mEnable;
			ScriptFunction mContinuedState;
			ScriptFunction mPausedState;
			ScriptFunction mPoppedState;
			ScriptFunction mPushedState;
			ScriptFunction mEndState;
			ScriptFunction mBeginState;
			ScriptFunction mDumpStateStack;
			ScriptFunction mPopState;
			ScriptFunction mPushState;
			ScriptFunction mGetStateName;
			ScriptFunction mIsChildState;
			ScriptFunction mIsInState;
			ScriptFunction mGotoState;
			ScriptFunction mIsUTracing;
			ScriptFunction mSetUTracing;
			ScriptFunction mGetFuncName;
			ScriptFunction mDebugBreak;
			ScriptFunction mGetScriptTrace;
			ScriptFunction mScriptTrace;
			ScriptFunction mParseLocalizedPropertyPath;
			ScriptFunction mLocalize;
			ScriptFunction mParseStringIntoArray;
			ScriptFunction mWarnInternal;
			ScriptFunction mLogInternal;
			ScriptFunction mSubtract_LinearColorLinearColor;
			ScriptFunction mMultiply_LinearColorFloat;
			ScriptFunction mColorToLinearColor;
			ScriptFunction mMakeLinearColor;
			ScriptFunction mLerpColor;
			ScriptFunction mMakeColor;
			ScriptFunction mAdd_ColorColor;
			ScriptFunction mMultiply_ColorFloat;
			ScriptFunction mMultiply_FloatColor;
			ScriptFunction mSubtract_ColorColor;
			ScriptFunction mEvalInterpCurveVector2D;
			ScriptFunction mEvalInterpCurveVector;
			ScriptFunction mEvalInterpCurveFloat;
			ScriptFunction mvect2d;
			ScriptFunction mGetMappedRangeValue;
			ScriptFunction mGetRangePctByValue;
			ScriptFunction mGetRangeValueByPct;
			ScriptFunction mSubtractEqual_Vector2DVector2D;
			ScriptFunction mAddEqual_Vector2DVector2D;
			ScriptFunction mDivideEqual_Vector2DFloat;
			ScriptFunction mMultiplyEqual_Vector2DFloat;
			ScriptFunction mDivide_Vector2DFloat;
			ScriptFunction mMultiply_Vector2DFloat;
			ScriptFunction mSubtract_Vector2DVector2D;
			ScriptFunction mAdd_Vector2DVector2D;
			ScriptFunction mSubtract_QuatQuat;
			ScriptFunction mAdd_QuatQuat;
			ScriptFunction mQuatSlerp;
			ScriptFunction mQuatToRotator;
			ScriptFunction mQuatFromRotator;
			ScriptFunction mQuatFromAxisAndAngle;
			ScriptFunction mQuatFindBetween;
			ScriptFunction mQuatRotateVector;
			ScriptFunction mQuatInvert;
			ScriptFunction mQuatDot;
			ScriptFunction mQuatProduct;
			ScriptFunction mMatrixGetAxis;
			ScriptFunction mMatrixGetOrigin;
			ScriptFunction mMatrixGetRotator;
			ScriptFunction mMakeRotationMatrix;
			ScriptFunction mMakeRotationTranslationMatrix;
			ScriptFunction mInverseTransformNormal;
			ScriptFunction mTransformNormal;
			ScriptFunction mInverseTransformVector;
			ScriptFunction mTransformVector;
			ScriptFunction mMultiply_MatrixMatrix;
			ScriptFunction mNotEqual_NameName;
			ScriptFunction mEqualEqual_NameName;
			ScriptFunction mIsA;
			ScriptFunction mClassIsChildOf;
			ScriptFunction mNotEqual_InterfaceInterface;
			ScriptFunction mEqualEqual_InterfaceInterface;
			ScriptFunction mNotEqual_ObjectObject;
			ScriptFunction mEqualEqual_ObjectObject;
			ScriptFunction mPathName;
			ScriptFunction mSplitString;
			ScriptFunction mJoinArray;
			ScriptFunction mGetRightMost;
			ScriptFunction mConcatEqual_StrStr;
			ScriptFunction mSplit;
			ScriptFunction mRepl;
			ScriptFunction mAsc;
			ScriptFunction mChr;
			ScriptFunction mLocs;
			ScriptFunction mCaps;
			ScriptFunction mRight;
			ScriptFunction mLeft;
			ScriptFunction mMid;
			ScriptFunction mInStr;
			ScriptFunction mLen;
			ScriptFunction mSubtractEqual_StrStr;
			ScriptFunction mAtEqual_StrStr;
			ScriptFunction mComplementEqual_StrStr;
			ScriptFunction mNotEqual_StrStr;
			ScriptFunction mEqualEqual_StrStr;
			ScriptFunction mGreaterEqual_StrStr;
			ScriptFunction mLessEqual_StrStr;
			ScriptFunction mGreater_StrStr;
			ScriptFunction mLess_StrStr;
			ScriptFunction mAt_StrStr;
			ScriptFunction mConcat_StrStr;
			ScriptFunction mMakeRotator;
			ScriptFunction mSClampRotAxis;
			ScriptFunction mClampRotAxisFromRange;
			ScriptFunction mNormalizeRotAxis;
			ScriptFunction mFInterpTo;
			ScriptFunction mClampRotAxisFromBase;
			ScriptFunction mClampRotAxis;
			ScriptFunction mRSize;
			ScriptFunction mRDiff;
			ScriptFunction mRInterpTo;
			ScriptFunction mRTransform;
			ScriptFunction mRSmerp;
			ScriptFunction mRLerp;
			ScriptFunction mNormalize;
			ScriptFunction mOrthoRotation;
			ScriptFunction mRotRand;
			ScriptFunction mGetRotatorAxis;
			ScriptFunction mGetUnAxes;
			ScriptFunction mGetAxes;
			ScriptFunction mClockwiseFrom_IntInt;
			ScriptFunction mSubtractEqual_RotatorRotator;
			ScriptFunction mAddEqual_RotatorRotator;
			ScriptFunction mSubtract_RotatorRotator;
			ScriptFunction mAdd_RotatorRotator;
			ScriptFunction mDivideEqual_RotatorFloat;
			ScriptFunction mMultiplyEqual_RotatorFloat;
			ScriptFunction mDivide_RotatorFloat;
			ScriptFunction mMultiply_FloatRotator;
			ScriptFunction mMultiply_RotatorFloat;
			ScriptFunction mNotEqual_RotatorRotator;
			ScriptFunction mEqualEqual_RotatorRotator;
			ScriptFunction mInCylinder;
			ScriptFunction mNoZDot;
			ScriptFunction mClampLength;
			ScriptFunction mVInterpTo;
			ScriptFunction mIsZero;
			ScriptFunction mProjectOnTo;
			ScriptFunction mMirrorVectorByNormal;
			ScriptFunction mVRandCone2;
			ScriptFunction mVRandCone;
			ScriptFunction mVRand;
			ScriptFunction mVSmerp;
			ScriptFunction mVLerp;
			ScriptFunction mNormal;
			ScriptFunction mVSizeSq2D;
			ScriptFunction mVSizeSq;
			ScriptFunction mVSize2D;
			ScriptFunction mVSize;
			ScriptFunction mSubtractEqual_VectorVector;
			ScriptFunction mAddEqual_VectorVector;
			ScriptFunction mDivideEqual_VectorFloat;
			ScriptFunction mMultiplyEqual_VectorVector;
			ScriptFunction mMultiplyEqual_VectorFloat;
			ScriptFunction mCross_VectorVector;
			ScriptFunction mDot_VectorVector;
			ScriptFunction mNotEqual_VectorVector;
			ScriptFunction mEqualEqual_VectorVector;
			ScriptFunction mGreaterGreater_VectorRotator;
			ScriptFunction mLessLess_VectorRotator;
			ScriptFunction mSubtract_VectorVector;
			ScriptFunction mAdd_VectorVector;
			ScriptFunction mDivide_VectorFloat;
			ScriptFunction mMultiply_VectorVector;
			ScriptFunction mMultiply_FloatVector;
			ScriptFunction mMultiply_VectorFloat;
			ScriptFunction mSubtract_PreVector;
			ScriptFunction mFInterpConstantTo;
			ScriptFunction mFPctByRange;
			ScriptFunction mRandRange;
			ScriptFunction mFInterpEaseInOut;
			ScriptFunction mFInterpEaseOut;
			ScriptFunction mFInterpEaseIn;
			ScriptFunction mFCubicInterp;
			ScriptFunction mFCeil;
			ScriptFunction mFFloor;
			ScriptFunction mRound;
			ScriptFunction mLerp;
			ScriptFunction mFClamp;
			ScriptFunction mFMax;
			ScriptFunction mFMin;
			ScriptFunction mFRand;
			ScriptFunction mSquare;
			ScriptFunction mSqrt;
			ScriptFunction mLoge;
			ScriptFunction mExp;
			ScriptFunction mAtan2;
			ScriptFunction mAtan;
			ScriptFunction mTan;
			ScriptFunction mCos;
			ScriptFunction mAsin;
			ScriptFunction mSin;
			ScriptFunction mAbs;
			ScriptFunction mSubtractEqual_FloatFloat;
			ScriptFunction mAddEqual_FloatFloat;
			ScriptFunction mDivideEqual_FloatFloat;
			ScriptFunction mMultiplyEqual_FloatFloat;
			ScriptFunction mNotEqual_FloatFloat;
			ScriptFunction mComplementEqual_FloatFloat;
			ScriptFunction mEqualEqual_FloatFloat;
			ScriptFunction mGreaterEqual_FloatFloat;
			ScriptFunction mLessEqual_FloatFloat;
			ScriptFunction mGreater_FloatFloat;
			ScriptFunction mLess_FloatFloat;
			ScriptFunction mSubtract_FloatFloat;
			ScriptFunction mAdd_FloatFloat;
			ScriptFunction mPercent_FloatFloat;
			ScriptFunction mDivide_FloatFloat;
			ScriptFunction mMultiply_FloatFloat;
			ScriptFunction mMultiplyMultiply_FloatFloat;
			ScriptFunction mSubtract_PreFloat;
			ScriptFunction mToHex;
			ScriptFunction mClamp;
			ScriptFunction mMax;
			ScriptFunction mMin;
			ScriptFunction mRand;
			ScriptFunction mSubtractSubtract_Int;
			ScriptFunction mAddAdd_Int;
			ScriptFunction mSubtractSubtract_PreInt;
			ScriptFunction mAddAdd_PreInt;
			ScriptFunction mSubtractEqual_IntInt;
			ScriptFunction mAddEqual_IntInt;
			ScriptFunction mDivideEqual_IntFloat;
			ScriptFunction mMultiplyEqual_IntFloat;
			ScriptFunction mOr_IntInt;
			ScriptFunction mXor_IntInt;
			ScriptFunction mAnd_IntInt;
			ScriptFunction mNotEqual_IntInt;
			ScriptFunction mEqualEqual_IntInt;
			ScriptFunction mGreaterEqual_IntInt;
			ScriptFunction mLessEqual_IntInt;
			ScriptFunction mGreater_IntInt;
			ScriptFunction mLess_IntInt;
			ScriptFunction mGreaterGreaterGreater_IntInt;
			ScriptFunction mGreaterGreater_IntInt;
			ScriptFunction mLessLess_IntInt;
			ScriptFunction mSubtract_IntInt;
			ScriptFunction mAdd_IntInt;
			ScriptFunction mPercent_IntInt;
			ScriptFunction mDivide_IntInt;
			ScriptFunction mMultiply_IntInt;
			ScriptFunction mSubtract_PreInt;
			ScriptFunction mComplement_PreInt;
			ScriptFunction mSubtractSubtract_Byte;
			ScriptFunction mAddAdd_Byte;
			ScriptFunction mSubtractSubtract_PreByte;
			ScriptFunction mAddAdd_PreByte;
			ScriptFunction mSubtractEqual_ByteByte;
			ScriptFunction mAddEqual_ByteByte;
			ScriptFunction mDivideEqual_ByteByte;
			ScriptFunction mMultiplyEqual_ByteFloat;
			ScriptFunction mMultiplyEqual_ByteByte;
			ScriptFunction mOrOr_BoolBool;
			ScriptFunction mXorXor_BoolBool;
			ScriptFunction mAndAnd_BoolBool;
			ScriptFunction mNotEqual_BoolBool;
			ScriptFunction mEqualEqual_BoolBool;
			ScriptFunction mNot_PreBool;
		}
		public @property static final
		{
			ScriptFunction GetBuildChangelistNumber() { mixin(MGF("mGetBuildChangelistNumber", "Function Core.Object.GetBuildChangelistNumber")); }
			ScriptFunction GetEngineVersion() { mixin(MGF("mGetEngineVersion", "Function Core.Object.GetEngineVersion")); }
			ScriptFunction GetSystemTime() { mixin(MGF("mGetSystemTime", "Function Core.Object.GetSystemTime")); }
			ScriptFunction TimeStamp() { mixin(MGF("mTimeStamp", "Function Core.Object.TimeStamp")); }
			ScriptFunction TransformVectorByRotation() { mixin(MGF("mTransformVectorByRotation", "Function Core.Object.TransformVectorByRotation")); }
			ScriptFunction GetPackageName() { mixin(MGF("mGetPackageName", "Function Core.Object.GetPackageName")); }
			ScriptFunction IsPendingKill() { mixin(MGF("mIsPendingKill", "Function Core.Object.IsPendingKill")); }
			ScriptFunction ByteToFloat() { mixin(MGF("mByteToFloat", "Function Core.Object.ByteToFloat")); }
			ScriptFunction FloatToByte() { mixin(MGF("mFloatToByte", "Function Core.Object.FloatToByte")); }
			ScriptFunction UnwindHeading() { mixin(MGF("mUnwindHeading", "Function Core.Object.UnwindHeading")); }
			ScriptFunction FindDeltaAngle() { mixin(MGF("mFindDeltaAngle", "Function Core.Object.FindDeltaAngle")); }
			ScriptFunction GetHeadingAngle() { mixin(MGF("mGetHeadingAngle", "Function Core.Object.GetHeadingAngle")); }
			ScriptFunction GetAngularDegreesFromRadians() { mixin(MGF("mGetAngularDegreesFromRadians", "Function Core.Object.GetAngularDegreesFromRadians")); }
			ScriptFunction Acos() { mixin(MGF("mAcos", "Function Core.Object.Acos")); }
			ScriptFunction GetAngularFromDotDist() { mixin(MGF("mGetAngularFromDotDist", "Function Core.Object.GetAngularFromDotDist")); }
			ScriptFunction GetAngularDistance() { mixin(MGF("mGetAngularDistance", "Function Core.Object.GetAngularDistance")); }
			ScriptFunction GetDotDistance() { mixin(MGF("mGetDotDistance", "Function Core.Object.GetDotDistance")); }
			ScriptFunction PointProjectToPlane() { mixin(MGF("mPointProjectToPlane", "Function Core.Object.PointProjectToPlane")); }
			ScriptFunction PointDistToPlane() { mixin(MGF("mPointDistToPlane", "Function Core.Object.PointDistToPlane")); }
			ScriptFunction PointDistToSegment() { mixin(MGF("mPointDistToSegment", "Function Core.Object.PointDistToSegment")); }
			ScriptFunction PointDistToLine() { mixin(MGF("mPointDistToLine", "Function Core.Object.PointDistToLine")); }
			ScriptFunction GetPerObjectConfigSections() { mixin(MGF("mGetPerObjectConfigSections", "Function Core.Object.GetPerObjectConfigSections")); }
			ScriptFunction StaticSaveConfig() { mixin(MGF("mStaticSaveConfig", "Function Core.Object.StaticSaveConfig")); }
			ScriptFunction SaveConfig() { mixin(MGF("mSaveConfig", "Function Core.Object.SaveConfig")); }
			ScriptFunction FindObject() { mixin(MGF("mFindObject", "Function Core.Object.FindObject")); }
			ScriptFunction DynamicLoadObject() { mixin(MGF("mDynamicLoadObject", "Function Core.Object.DynamicLoadObject")); }
			ScriptFunction GetEnum() { mixin(MGF("mGetEnum", "Function Core.Object.GetEnum")); }
			ScriptFunction Disable() { mixin(MGF("mDisable", "Function Core.Object.Disable")); }
			ScriptFunction Enable() { mixin(MGF("mEnable", "Function Core.Object.Enable")); }
			ScriptFunction ContinuedState() { mixin(MGF("mContinuedState", "Function Core.Object.ContinuedState")); }
			ScriptFunction PausedState() { mixin(MGF("mPausedState", "Function Core.Object.PausedState")); }
			ScriptFunction PoppedState() { mixin(MGF("mPoppedState", "Function Core.Object.PoppedState")); }
			ScriptFunction PushedState() { mixin(MGF("mPushedState", "Function Core.Object.PushedState")); }
			ScriptFunction EndState() { mixin(MGF("mEndState", "Function Core.Object.EndState")); }
			ScriptFunction BeginState() { mixin(MGF("mBeginState", "Function Core.Object.BeginState")); }
			ScriptFunction DumpStateStack() { mixin(MGF("mDumpStateStack", "Function Core.Object.DumpStateStack")); }
			ScriptFunction PopState() { mixin(MGF("mPopState", "Function Core.Object.PopState")); }
			ScriptFunction PushState() { mixin(MGF("mPushState", "Function Core.Object.PushState")); }
			ScriptFunction GetStateName() { mixin(MGF("mGetStateName", "Function Core.Object.GetStateName")); }
			ScriptFunction IsChildState() { mixin(MGF("mIsChildState", "Function Core.Object.IsChildState")); }
			ScriptFunction IsInState() { mixin(MGF("mIsInState", "Function Core.Object.IsInState")); }
			ScriptFunction GotoState() { mixin(MGF("mGotoState", "Function Core.Object.GotoState")); }
			ScriptFunction IsUTracing() { mixin(MGF("mIsUTracing", "Function Core.Object.IsUTracing")); }
			ScriptFunction SetUTracing() { mixin(MGF("mSetUTracing", "Function Core.Object.SetUTracing")); }
			ScriptFunction GetFuncName() { mixin(MGF("mGetFuncName", "Function Core.Object.GetFuncName")); }
			ScriptFunction DebugBreak() { mixin(MGF("mDebugBreak", "Function Core.Object.DebugBreak")); }
			ScriptFunction GetScriptTrace() { mixin(MGF("mGetScriptTrace", "Function Core.Object.GetScriptTrace")); }
			ScriptFunction ScriptTrace() { mixin(MGF("mScriptTrace", "Function Core.Object.ScriptTrace")); }
			ScriptFunction ParseLocalizedPropertyPath() { mixin(MGF("mParseLocalizedPropertyPath", "Function Core.Object.ParseLocalizedPropertyPath")); }
			ScriptFunction Localize() { mixin(MGF("mLocalize", "Function Core.Object.Localize")); }
			ScriptFunction ParseStringIntoArray() { mixin(MGF("mParseStringIntoArray", "Function Core.Object.ParseStringIntoArray")); }
			ScriptFunction WarnInternal() { mixin(MGF("mWarnInternal", "Function Core.Object.WarnInternal")); }
			ScriptFunction LogInternal() { mixin(MGF("mLogInternal", "Function Core.Object.LogInternal")); }
			ScriptFunction Subtract_LinearColorLinearColor() { mixin(MGF("mSubtract_LinearColorLinearColor", "Function Core.Object.Subtract_LinearColorLinearColor")); }
			ScriptFunction Multiply_LinearColorFloat() { mixin(MGF("mMultiply_LinearColorFloat", "Function Core.Object.Multiply_LinearColorFloat")); }
			ScriptFunction ColorToLinearColor() { mixin(MGF("mColorToLinearColor", "Function Core.Object.ColorToLinearColor")); }
			ScriptFunction MakeLinearColor() { mixin(MGF("mMakeLinearColor", "Function Core.Object.MakeLinearColor")); }
			ScriptFunction LerpColor() { mixin(MGF("mLerpColor", "Function Core.Object.LerpColor")); }
			ScriptFunction MakeColor() { mixin(MGF("mMakeColor", "Function Core.Object.MakeColor")); }
			ScriptFunction Add_ColorColor() { mixin(MGF("mAdd_ColorColor", "Function Core.Object.Add_ColorColor")); }
			ScriptFunction Multiply_ColorFloat() { mixin(MGF("mMultiply_ColorFloat", "Function Core.Object.Multiply_ColorFloat")); }
			ScriptFunction Multiply_FloatColor() { mixin(MGF("mMultiply_FloatColor", "Function Core.Object.Multiply_FloatColor")); }
			ScriptFunction Subtract_ColorColor() { mixin(MGF("mSubtract_ColorColor", "Function Core.Object.Subtract_ColorColor")); }
			ScriptFunction EvalInterpCurveVector2D() { mixin(MGF("mEvalInterpCurveVector2D", "Function Core.Object.EvalInterpCurveVector2D")); }
			ScriptFunction EvalInterpCurveVector() { mixin(MGF("mEvalInterpCurveVector", "Function Core.Object.EvalInterpCurveVector")); }
			ScriptFunction EvalInterpCurveFloat() { mixin(MGF("mEvalInterpCurveFloat", "Function Core.Object.EvalInterpCurveFloat")); }
			ScriptFunction vect2d() { mixin(MGF("mvect2d", "Function Core.Object.vect2d")); }
			ScriptFunction GetMappedRangeValue() { mixin(MGF("mGetMappedRangeValue", "Function Core.Object.GetMappedRangeValue")); }
			ScriptFunction GetRangePctByValue() { mixin(MGF("mGetRangePctByValue", "Function Core.Object.GetRangePctByValue")); }
			ScriptFunction GetRangeValueByPct() { mixin(MGF("mGetRangeValueByPct", "Function Core.Object.GetRangeValueByPct")); }
			ScriptFunction SubtractEqual_Vector2DVector2D() { mixin(MGF("mSubtractEqual_Vector2DVector2D", "Function Core.Object.SubtractEqual_Vector2DVector2D")); }
			ScriptFunction AddEqual_Vector2DVector2D() { mixin(MGF("mAddEqual_Vector2DVector2D", "Function Core.Object.AddEqual_Vector2DVector2D")); }
			ScriptFunction DivideEqual_Vector2DFloat() { mixin(MGF("mDivideEqual_Vector2DFloat", "Function Core.Object.DivideEqual_Vector2DFloat")); }
			ScriptFunction MultiplyEqual_Vector2DFloat() { mixin(MGF("mMultiplyEqual_Vector2DFloat", "Function Core.Object.MultiplyEqual_Vector2DFloat")); }
			ScriptFunction Divide_Vector2DFloat() { mixin(MGF("mDivide_Vector2DFloat", "Function Core.Object.Divide_Vector2DFloat")); }
			ScriptFunction Multiply_Vector2DFloat() { mixin(MGF("mMultiply_Vector2DFloat", "Function Core.Object.Multiply_Vector2DFloat")); }
			ScriptFunction Subtract_Vector2DVector2D() { mixin(MGF("mSubtract_Vector2DVector2D", "Function Core.Object.Subtract_Vector2DVector2D")); }
			ScriptFunction Add_Vector2DVector2D() { mixin(MGF("mAdd_Vector2DVector2D", "Function Core.Object.Add_Vector2DVector2D")); }
			ScriptFunction Subtract_QuatQuat() { mixin(MGF("mSubtract_QuatQuat", "Function Core.Object.Subtract_QuatQuat")); }
			ScriptFunction Add_QuatQuat() { mixin(MGF("mAdd_QuatQuat", "Function Core.Object.Add_QuatQuat")); }
			ScriptFunction QuatSlerp() { mixin(MGF("mQuatSlerp", "Function Core.Object.QuatSlerp")); }
			ScriptFunction QuatToRotator() { mixin(MGF("mQuatToRotator", "Function Core.Object.QuatToRotator")); }
			ScriptFunction QuatFromRotator() { mixin(MGF("mQuatFromRotator", "Function Core.Object.QuatFromRotator")); }
			ScriptFunction QuatFromAxisAndAngle() { mixin(MGF("mQuatFromAxisAndAngle", "Function Core.Object.QuatFromAxisAndAngle")); }
			ScriptFunction QuatFindBetween() { mixin(MGF("mQuatFindBetween", "Function Core.Object.QuatFindBetween")); }
			ScriptFunction QuatRotateVector() { mixin(MGF("mQuatRotateVector", "Function Core.Object.QuatRotateVector")); }
			ScriptFunction QuatInvert() { mixin(MGF("mQuatInvert", "Function Core.Object.QuatInvert")); }
			ScriptFunction QuatDot() { mixin(MGF("mQuatDot", "Function Core.Object.QuatDot")); }
			ScriptFunction QuatProduct() { mixin(MGF("mQuatProduct", "Function Core.Object.QuatProduct")); }
			ScriptFunction MatrixGetAxis() { mixin(MGF("mMatrixGetAxis", "Function Core.Object.MatrixGetAxis")); }
			ScriptFunction MatrixGetOrigin() { mixin(MGF("mMatrixGetOrigin", "Function Core.Object.MatrixGetOrigin")); }
			ScriptFunction MatrixGetRotator() { mixin(MGF("mMatrixGetRotator", "Function Core.Object.MatrixGetRotator")); }
			ScriptFunction MakeRotationMatrix() { mixin(MGF("mMakeRotationMatrix", "Function Core.Object.MakeRotationMatrix")); }
			ScriptFunction MakeRotationTranslationMatrix() { mixin(MGF("mMakeRotationTranslationMatrix", "Function Core.Object.MakeRotationTranslationMatrix")); }
			ScriptFunction InverseTransformNormal() { mixin(MGF("mInverseTransformNormal", "Function Core.Object.InverseTransformNormal")); }
			ScriptFunction TransformNormal() { mixin(MGF("mTransformNormal", "Function Core.Object.TransformNormal")); }
			ScriptFunction InverseTransformVector() { mixin(MGF("mInverseTransformVector", "Function Core.Object.InverseTransformVector")); }
			ScriptFunction TransformVector() { mixin(MGF("mTransformVector", "Function Core.Object.TransformVector")); }
			ScriptFunction Multiply_MatrixMatrix() { mixin(MGF("mMultiply_MatrixMatrix", "Function Core.Object.Multiply_MatrixMatrix")); }
			ScriptFunction NotEqual_NameName() { mixin(MGF("mNotEqual_NameName", "Function Core.Object.NotEqual_NameName")); }
			ScriptFunction EqualEqual_NameName() { mixin(MGF("mEqualEqual_NameName", "Function Core.Object.EqualEqual_NameName")); }
			ScriptFunction IsA() { mixin(MGF("mIsA", "Function Core.Object.IsA")); }
			ScriptFunction ClassIsChildOf() { mixin(MGF("mClassIsChildOf", "Function Core.Object.ClassIsChildOf")); }
			ScriptFunction NotEqual_InterfaceInterface() { mixin(MGF("mNotEqual_InterfaceInterface", "Function Core.Object.NotEqual_InterfaceInterface")); }
			ScriptFunction EqualEqual_InterfaceInterface() { mixin(MGF("mEqualEqual_InterfaceInterface", "Function Core.Object.EqualEqual_InterfaceInterface")); }
			ScriptFunction NotEqual_ObjectObject() { mixin(MGF("mNotEqual_ObjectObject", "Function Core.Object.NotEqual_ObjectObject")); }
			ScriptFunction EqualEqual_ObjectObject() { mixin(MGF("mEqualEqual_ObjectObject", "Function Core.Object.EqualEqual_ObjectObject")); }
			ScriptFunction PathName() { mixin(MGF("mPathName", "Function Core.Object.PathName")); }
			ScriptFunction SplitString() { mixin(MGF("mSplitString", "Function Core.Object.SplitString")); }
			ScriptFunction JoinArray() { mixin(MGF("mJoinArray", "Function Core.Object.JoinArray")); }
			ScriptFunction GetRightMost() { mixin(MGF("mGetRightMost", "Function Core.Object.GetRightMost")); }
			ScriptFunction ConcatEqual_StrStr() { mixin(MGF("mConcatEqual_StrStr", "Function Core.Object.ConcatEqual_StrStr")); }
			ScriptFunction Split() { mixin(MGF("mSplit", "Function Core.Object.Split")); }
			ScriptFunction Repl() { mixin(MGF("mRepl", "Function Core.Object.Repl")); }
			ScriptFunction Asc() { mixin(MGF("mAsc", "Function Core.Object.Asc")); }
			ScriptFunction Chr() { mixin(MGF("mChr", "Function Core.Object.Chr")); }
			ScriptFunction Locs() { mixin(MGF("mLocs", "Function Core.Object.Locs")); }
			ScriptFunction Caps() { mixin(MGF("mCaps", "Function Core.Object.Caps")); }
			ScriptFunction Right() { mixin(MGF("mRight", "Function Core.Object.Right")); }
			ScriptFunction Left() { mixin(MGF("mLeft", "Function Core.Object.Left")); }
			ScriptFunction Mid() { mixin(MGF("mMid", "Function Core.Object.Mid")); }
			ScriptFunction InStr() { mixin(MGF("mInStr", "Function Core.Object.InStr")); }
			ScriptFunction Len() { mixin(MGF("mLen", "Function Core.Object.Len")); }
			ScriptFunction SubtractEqual_StrStr() { mixin(MGF("mSubtractEqual_StrStr", "Function Core.Object.SubtractEqual_StrStr")); }
			ScriptFunction AtEqual_StrStr() { mixin(MGF("mAtEqual_StrStr", "Function Core.Object.AtEqual_StrStr")); }
			ScriptFunction ComplementEqual_StrStr() { mixin(MGF("mComplementEqual_StrStr", "Function Core.Object.ComplementEqual_StrStr")); }
			ScriptFunction NotEqual_StrStr() { mixin(MGF("mNotEqual_StrStr", "Function Core.Object.NotEqual_StrStr")); }
			ScriptFunction EqualEqual_StrStr() { mixin(MGF("mEqualEqual_StrStr", "Function Core.Object.EqualEqual_StrStr")); }
			ScriptFunction GreaterEqual_StrStr() { mixin(MGF("mGreaterEqual_StrStr", "Function Core.Object.GreaterEqual_StrStr")); }
			ScriptFunction LessEqual_StrStr() { mixin(MGF("mLessEqual_StrStr", "Function Core.Object.LessEqual_StrStr")); }
			ScriptFunction Greater_StrStr() { mixin(MGF("mGreater_StrStr", "Function Core.Object.Greater_StrStr")); }
			ScriptFunction Less_StrStr() { mixin(MGF("mLess_StrStr", "Function Core.Object.Less_StrStr")); }
			ScriptFunction At_StrStr() { mixin(MGF("mAt_StrStr", "Function Core.Object.At_StrStr")); }
			ScriptFunction Concat_StrStr() { mixin(MGF("mConcat_StrStr", "Function Core.Object.Concat_StrStr")); }
			ScriptFunction MakeRotator() { mixin(MGF("mMakeRotator", "Function Core.Object.MakeRotator")); }
			ScriptFunction SClampRotAxis() { mixin(MGF("mSClampRotAxis", "Function Core.Object.SClampRotAxis")); }
			ScriptFunction ClampRotAxisFromRange() { mixin(MGF("mClampRotAxisFromRange", "Function Core.Object.ClampRotAxisFromRange")); }
			ScriptFunction NormalizeRotAxis() { mixin(MGF("mNormalizeRotAxis", "Function Core.Object.NormalizeRotAxis")); }
			ScriptFunction FInterpTo() { mixin(MGF("mFInterpTo", "Function Core.Object.FInterpTo")); }
			ScriptFunction ClampRotAxisFromBase() { mixin(MGF("mClampRotAxisFromBase", "Function Core.Object.ClampRotAxisFromBase")); }
			ScriptFunction ClampRotAxis() { mixin(MGF("mClampRotAxis", "Function Core.Object.ClampRotAxis")); }
			ScriptFunction RSize() { mixin(MGF("mRSize", "Function Core.Object.RSize")); }
			ScriptFunction RDiff() { mixin(MGF("mRDiff", "Function Core.Object.RDiff")); }
			ScriptFunction RInterpTo() { mixin(MGF("mRInterpTo", "Function Core.Object.RInterpTo")); }
			ScriptFunction RTransform() { mixin(MGF("mRTransform", "Function Core.Object.RTransform")); }
			ScriptFunction RSmerp() { mixin(MGF("mRSmerp", "Function Core.Object.RSmerp")); }
			ScriptFunction RLerp() { mixin(MGF("mRLerp", "Function Core.Object.RLerp")); }
			ScriptFunction Normalize() { mixin(MGF("mNormalize", "Function Core.Object.Normalize")); }
			ScriptFunction OrthoRotation() { mixin(MGF("mOrthoRotation", "Function Core.Object.OrthoRotation")); }
			ScriptFunction RotRand() { mixin(MGF("mRotRand", "Function Core.Object.RotRand")); }
			ScriptFunction GetRotatorAxis() { mixin(MGF("mGetRotatorAxis", "Function Core.Object.GetRotatorAxis")); }
			ScriptFunction GetUnAxes() { mixin(MGF("mGetUnAxes", "Function Core.Object.GetUnAxes")); }
			ScriptFunction GetAxes() { mixin(MGF("mGetAxes", "Function Core.Object.GetAxes")); }
			ScriptFunction ClockwiseFrom_IntInt() { mixin(MGF("mClockwiseFrom_IntInt", "Function Core.Object.ClockwiseFrom_IntInt")); }
			ScriptFunction SubtractEqual_RotatorRotator() { mixin(MGF("mSubtractEqual_RotatorRotator", "Function Core.Object.SubtractEqual_RotatorRotator")); }
			ScriptFunction AddEqual_RotatorRotator() { mixin(MGF("mAddEqual_RotatorRotator", "Function Core.Object.AddEqual_RotatorRotator")); }
			ScriptFunction Subtract_RotatorRotator() { mixin(MGF("mSubtract_RotatorRotator", "Function Core.Object.Subtract_RotatorRotator")); }
			ScriptFunction Add_RotatorRotator() { mixin(MGF("mAdd_RotatorRotator", "Function Core.Object.Add_RotatorRotator")); }
			ScriptFunction DivideEqual_RotatorFloat() { mixin(MGF("mDivideEqual_RotatorFloat", "Function Core.Object.DivideEqual_RotatorFloat")); }
			ScriptFunction MultiplyEqual_RotatorFloat() { mixin(MGF("mMultiplyEqual_RotatorFloat", "Function Core.Object.MultiplyEqual_RotatorFloat")); }
			ScriptFunction Divide_RotatorFloat() { mixin(MGF("mDivide_RotatorFloat", "Function Core.Object.Divide_RotatorFloat")); }
			ScriptFunction Multiply_FloatRotator() { mixin(MGF("mMultiply_FloatRotator", "Function Core.Object.Multiply_FloatRotator")); }
			ScriptFunction Multiply_RotatorFloat() { mixin(MGF("mMultiply_RotatorFloat", "Function Core.Object.Multiply_RotatorFloat")); }
			ScriptFunction NotEqual_RotatorRotator() { mixin(MGF("mNotEqual_RotatorRotator", "Function Core.Object.NotEqual_RotatorRotator")); }
			ScriptFunction EqualEqual_RotatorRotator() { mixin(MGF("mEqualEqual_RotatorRotator", "Function Core.Object.EqualEqual_RotatorRotator")); }
			ScriptFunction InCylinder() { mixin(MGF("mInCylinder", "Function Core.Object.InCylinder")); }
			ScriptFunction NoZDot() { mixin(MGF("mNoZDot", "Function Core.Object.NoZDot")); }
			ScriptFunction ClampLength() { mixin(MGF("mClampLength", "Function Core.Object.ClampLength")); }
			ScriptFunction VInterpTo() { mixin(MGF("mVInterpTo", "Function Core.Object.VInterpTo")); }
			ScriptFunction IsZero() { mixin(MGF("mIsZero", "Function Core.Object.IsZero")); }
			ScriptFunction ProjectOnTo() { mixin(MGF("mProjectOnTo", "Function Core.Object.ProjectOnTo")); }
			ScriptFunction MirrorVectorByNormal() { mixin(MGF("mMirrorVectorByNormal", "Function Core.Object.MirrorVectorByNormal")); }
			ScriptFunction VRandCone2() { mixin(MGF("mVRandCone2", "Function Core.Object.VRandCone2")); }
			ScriptFunction VRandCone() { mixin(MGF("mVRandCone", "Function Core.Object.VRandCone")); }
			ScriptFunction VRand() { mixin(MGF("mVRand", "Function Core.Object.VRand")); }
			ScriptFunction VSmerp() { mixin(MGF("mVSmerp", "Function Core.Object.VSmerp")); }
			ScriptFunction VLerp() { mixin(MGF("mVLerp", "Function Core.Object.VLerp")); }
			ScriptFunction Normal() { mixin(MGF("mNormal", "Function Core.Object.Normal")); }
			ScriptFunction VSizeSq2D() { mixin(MGF("mVSizeSq2D", "Function Core.Object.VSizeSq2D")); }
			ScriptFunction VSizeSq() { mixin(MGF("mVSizeSq", "Function Core.Object.VSizeSq")); }
			ScriptFunction VSize2D() { mixin(MGF("mVSize2D", "Function Core.Object.VSize2D")); }
			ScriptFunction VSize() { mixin(MGF("mVSize", "Function Core.Object.VSize")); }
			ScriptFunction SubtractEqual_VectorVector() { mixin(MGF("mSubtractEqual_VectorVector", "Function Core.Object.SubtractEqual_VectorVector")); }
			ScriptFunction AddEqual_VectorVector() { mixin(MGF("mAddEqual_VectorVector", "Function Core.Object.AddEqual_VectorVector")); }
			ScriptFunction DivideEqual_VectorFloat() { mixin(MGF("mDivideEqual_VectorFloat", "Function Core.Object.DivideEqual_VectorFloat")); }
			ScriptFunction MultiplyEqual_VectorVector() { mixin(MGF("mMultiplyEqual_VectorVector", "Function Core.Object.MultiplyEqual_VectorVector")); }
			ScriptFunction MultiplyEqual_VectorFloat() { mixin(MGF("mMultiplyEqual_VectorFloat", "Function Core.Object.MultiplyEqual_VectorFloat")); }
			ScriptFunction Cross_VectorVector() { mixin(MGF("mCross_VectorVector", "Function Core.Object.Cross_VectorVector")); }
			ScriptFunction Dot_VectorVector() { mixin(MGF("mDot_VectorVector", "Function Core.Object.Dot_VectorVector")); }
			ScriptFunction NotEqual_VectorVector() { mixin(MGF("mNotEqual_VectorVector", "Function Core.Object.NotEqual_VectorVector")); }
			ScriptFunction EqualEqual_VectorVector() { mixin(MGF("mEqualEqual_VectorVector", "Function Core.Object.EqualEqual_VectorVector")); }
			ScriptFunction GreaterGreater_VectorRotator() { mixin(MGF("mGreaterGreater_VectorRotator", "Function Core.Object.GreaterGreater_VectorRotator")); }
			ScriptFunction LessLess_VectorRotator() { mixin(MGF("mLessLess_VectorRotator", "Function Core.Object.LessLess_VectorRotator")); }
			ScriptFunction Subtract_VectorVector() { mixin(MGF("mSubtract_VectorVector", "Function Core.Object.Subtract_VectorVector")); }
			ScriptFunction Add_VectorVector() { mixin(MGF("mAdd_VectorVector", "Function Core.Object.Add_VectorVector")); }
			ScriptFunction Divide_VectorFloat() { mixin(MGF("mDivide_VectorFloat", "Function Core.Object.Divide_VectorFloat")); }
			ScriptFunction Multiply_VectorVector() { mixin(MGF("mMultiply_VectorVector", "Function Core.Object.Multiply_VectorVector")); }
			ScriptFunction Multiply_FloatVector() { mixin(MGF("mMultiply_FloatVector", "Function Core.Object.Multiply_FloatVector")); }
			ScriptFunction Multiply_VectorFloat() { mixin(MGF("mMultiply_VectorFloat", "Function Core.Object.Multiply_VectorFloat")); }
			ScriptFunction Subtract_PreVector() { mixin(MGF("mSubtract_PreVector", "Function Core.Object.Subtract_PreVector")); }
			ScriptFunction FInterpConstantTo() { mixin(MGF("mFInterpConstantTo", "Function Core.Object.FInterpConstantTo")); }
			ScriptFunction FPctByRange() { mixin(MGF("mFPctByRange", "Function Core.Object.FPctByRange")); }
			ScriptFunction RandRange() { mixin(MGF("mRandRange", "Function Core.Object.RandRange")); }
			ScriptFunction FInterpEaseInOut() { mixin(MGF("mFInterpEaseInOut", "Function Core.Object.FInterpEaseInOut")); }
			ScriptFunction FInterpEaseOut() { mixin(MGF("mFInterpEaseOut", "Function Core.Object.FInterpEaseOut")); }
			ScriptFunction FInterpEaseIn() { mixin(MGF("mFInterpEaseIn", "Function Core.Object.FInterpEaseIn")); }
			ScriptFunction FCubicInterp() { mixin(MGF("mFCubicInterp", "Function Core.Object.FCubicInterp")); }
			ScriptFunction FCeil() { mixin(MGF("mFCeil", "Function Core.Object.FCeil")); }
			ScriptFunction FFloor() { mixin(MGF("mFFloor", "Function Core.Object.FFloor")); }
			ScriptFunction Round() { mixin(MGF("mRound", "Function Core.Object.Round")); }
			ScriptFunction Lerp() { mixin(MGF("mLerp", "Function Core.Object.Lerp")); }
			ScriptFunction FClamp() { mixin(MGF("mFClamp", "Function Core.Object.FClamp")); }
			ScriptFunction FMax() { mixin(MGF("mFMax", "Function Core.Object.FMax")); }
			ScriptFunction FMin() { mixin(MGF("mFMin", "Function Core.Object.FMin")); }
			ScriptFunction FRand() { mixin(MGF("mFRand", "Function Core.Object.FRand")); }
			ScriptFunction Square() { mixin(MGF("mSquare", "Function Core.Object.Square")); }
			ScriptFunction Sqrt() { mixin(MGF("mSqrt", "Function Core.Object.Sqrt")); }
			ScriptFunction Loge() { mixin(MGF("mLoge", "Function Core.Object.Loge")); }
			ScriptFunction Exp() { mixin(MGF("mExp", "Function Core.Object.Exp")); }
			ScriptFunction Atan2() { mixin(MGF("mAtan2", "Function Core.Object.Atan2")); }
			ScriptFunction Atan() { mixin(MGF("mAtan", "Function Core.Object.Atan")); }
			ScriptFunction Tan() { mixin(MGF("mTan", "Function Core.Object.Tan")); }
			ScriptFunction Cos() { mixin(MGF("mCos", "Function Core.Object.Cos")); }
			ScriptFunction Asin() { mixin(MGF("mAsin", "Function Core.Object.Asin")); }
			ScriptFunction Sin() { mixin(MGF("mSin", "Function Core.Object.Sin")); }
			ScriptFunction Abs() { mixin(MGF("mAbs", "Function Core.Object.Abs")); }
			ScriptFunction SubtractEqual_FloatFloat() { mixin(MGF("mSubtractEqual_FloatFloat", "Function Core.Object.SubtractEqual_FloatFloat")); }
			ScriptFunction AddEqual_FloatFloat() { mixin(MGF("mAddEqual_FloatFloat", "Function Core.Object.AddEqual_FloatFloat")); }
			ScriptFunction DivideEqual_FloatFloat() { mixin(MGF("mDivideEqual_FloatFloat", "Function Core.Object.DivideEqual_FloatFloat")); }
			ScriptFunction MultiplyEqual_FloatFloat() { mixin(MGF("mMultiplyEqual_FloatFloat", "Function Core.Object.MultiplyEqual_FloatFloat")); }
			ScriptFunction NotEqual_FloatFloat() { mixin(MGF("mNotEqual_FloatFloat", "Function Core.Object.NotEqual_FloatFloat")); }
			ScriptFunction ComplementEqual_FloatFloat() { mixin(MGF("mComplementEqual_FloatFloat", "Function Core.Object.ComplementEqual_FloatFloat")); }
			ScriptFunction EqualEqual_FloatFloat() { mixin(MGF("mEqualEqual_FloatFloat", "Function Core.Object.EqualEqual_FloatFloat")); }
			ScriptFunction GreaterEqual_FloatFloat() { mixin(MGF("mGreaterEqual_FloatFloat", "Function Core.Object.GreaterEqual_FloatFloat")); }
			ScriptFunction LessEqual_FloatFloat() { mixin(MGF("mLessEqual_FloatFloat", "Function Core.Object.LessEqual_FloatFloat")); }
			ScriptFunction Greater_FloatFloat() { mixin(MGF("mGreater_FloatFloat", "Function Core.Object.Greater_FloatFloat")); }
			ScriptFunction Less_FloatFloat() { mixin(MGF("mLess_FloatFloat", "Function Core.Object.Less_FloatFloat")); }
			ScriptFunction Subtract_FloatFloat() { mixin(MGF("mSubtract_FloatFloat", "Function Core.Object.Subtract_FloatFloat")); }
			ScriptFunction Add_FloatFloat() { mixin(MGF("mAdd_FloatFloat", "Function Core.Object.Add_FloatFloat")); }
			ScriptFunction Percent_FloatFloat() { mixin(MGF("mPercent_FloatFloat", "Function Core.Object.Percent_FloatFloat")); }
			ScriptFunction Divide_FloatFloat() { mixin(MGF("mDivide_FloatFloat", "Function Core.Object.Divide_FloatFloat")); }
			ScriptFunction Multiply_FloatFloat() { mixin(MGF("mMultiply_FloatFloat", "Function Core.Object.Multiply_FloatFloat")); }
			ScriptFunction MultiplyMultiply_FloatFloat() { mixin(MGF("mMultiplyMultiply_FloatFloat", "Function Core.Object.MultiplyMultiply_FloatFloat")); }
			ScriptFunction Subtract_PreFloat() { mixin(MGF("mSubtract_PreFloat", "Function Core.Object.Subtract_PreFloat")); }
			ScriptFunction ToHex() { mixin(MGF("mToHex", "Function Core.Object.ToHex")); }
			ScriptFunction Clamp() { mixin(MGF("mClamp", "Function Core.Object.Clamp")); }
			ScriptFunction Max() { mixin(MGF("mMax", "Function Core.Object.Max")); }
			ScriptFunction Min() { mixin(MGF("mMin", "Function Core.Object.Min")); }
			ScriptFunction Rand() { mixin(MGF("mRand", "Function Core.Object.Rand")); }
			ScriptFunction SubtractSubtract_Int() { mixin(MGF("mSubtractSubtract_Int", "Function Core.Object.SubtractSubtract_Int")); }
			ScriptFunction AddAdd_Int() { mixin(MGF("mAddAdd_Int", "Function Core.Object.AddAdd_Int")); }
			ScriptFunction SubtractSubtract_PreInt() { mixin(MGF("mSubtractSubtract_PreInt", "Function Core.Object.SubtractSubtract_PreInt")); }
			ScriptFunction AddAdd_PreInt() { mixin(MGF("mAddAdd_PreInt", "Function Core.Object.AddAdd_PreInt")); }
			ScriptFunction SubtractEqual_IntInt() { mixin(MGF("mSubtractEqual_IntInt", "Function Core.Object.SubtractEqual_IntInt")); }
			ScriptFunction AddEqual_IntInt() { mixin(MGF("mAddEqual_IntInt", "Function Core.Object.AddEqual_IntInt")); }
			ScriptFunction DivideEqual_IntFloat() { mixin(MGF("mDivideEqual_IntFloat", "Function Core.Object.DivideEqual_IntFloat")); }
			ScriptFunction MultiplyEqual_IntFloat() { mixin(MGF("mMultiplyEqual_IntFloat", "Function Core.Object.MultiplyEqual_IntFloat")); }
			ScriptFunction Or_IntInt() { mixin(MGF("mOr_IntInt", "Function Core.Object.Or_IntInt")); }
			ScriptFunction Xor_IntInt() { mixin(MGF("mXor_IntInt", "Function Core.Object.Xor_IntInt")); }
			ScriptFunction And_IntInt() { mixin(MGF("mAnd_IntInt", "Function Core.Object.And_IntInt")); }
			ScriptFunction NotEqual_IntInt() { mixin(MGF("mNotEqual_IntInt", "Function Core.Object.NotEqual_IntInt")); }
			ScriptFunction EqualEqual_IntInt() { mixin(MGF("mEqualEqual_IntInt", "Function Core.Object.EqualEqual_IntInt")); }
			ScriptFunction GreaterEqual_IntInt() { mixin(MGF("mGreaterEqual_IntInt", "Function Core.Object.GreaterEqual_IntInt")); }
			ScriptFunction LessEqual_IntInt() { mixin(MGF("mLessEqual_IntInt", "Function Core.Object.LessEqual_IntInt")); }
			ScriptFunction Greater_IntInt() { mixin(MGF("mGreater_IntInt", "Function Core.Object.Greater_IntInt")); }
			ScriptFunction Less_IntInt() { mixin(MGF("mLess_IntInt", "Function Core.Object.Less_IntInt")); }
			ScriptFunction GreaterGreaterGreater_IntInt() { mixin(MGF("mGreaterGreaterGreater_IntInt", "Function Core.Object.GreaterGreaterGreater_IntInt")); }
			ScriptFunction GreaterGreater_IntInt() { mixin(MGF("mGreaterGreater_IntInt", "Function Core.Object.GreaterGreater_IntInt")); }
			ScriptFunction LessLess_IntInt() { mixin(MGF("mLessLess_IntInt", "Function Core.Object.LessLess_IntInt")); }
			ScriptFunction Subtract_IntInt() { mixin(MGF("mSubtract_IntInt", "Function Core.Object.Subtract_IntInt")); }
			ScriptFunction Add_IntInt() { mixin(MGF("mAdd_IntInt", "Function Core.Object.Add_IntInt")); }
			ScriptFunction Percent_IntInt() { mixin(MGF("mPercent_IntInt", "Function Core.Object.Percent_IntInt")); }
			ScriptFunction Divide_IntInt() { mixin(MGF("mDivide_IntInt", "Function Core.Object.Divide_IntInt")); }
			ScriptFunction Multiply_IntInt() { mixin(MGF("mMultiply_IntInt", "Function Core.Object.Multiply_IntInt")); }
			ScriptFunction Subtract_PreInt() { mixin(MGF("mSubtract_PreInt", "Function Core.Object.Subtract_PreInt")); }
			ScriptFunction Complement_PreInt() { mixin(MGF("mComplement_PreInt", "Function Core.Object.Complement_PreInt")); }
			ScriptFunction SubtractSubtract_Byte() { mixin(MGF("mSubtractSubtract_Byte", "Function Core.Object.SubtractSubtract_Byte")); }
			ScriptFunction AddAdd_Byte() { mixin(MGF("mAddAdd_Byte", "Function Core.Object.AddAdd_Byte")); }
			ScriptFunction SubtractSubtract_PreByte() { mixin(MGF("mSubtractSubtract_PreByte", "Function Core.Object.SubtractSubtract_PreByte")); }
			ScriptFunction AddAdd_PreByte() { mixin(MGF("mAddAdd_PreByte", "Function Core.Object.AddAdd_PreByte")); }
			ScriptFunction SubtractEqual_ByteByte() { mixin(MGF("mSubtractEqual_ByteByte", "Function Core.Object.SubtractEqual_ByteByte")); }
			ScriptFunction AddEqual_ByteByte() { mixin(MGF("mAddEqual_ByteByte", "Function Core.Object.AddEqual_ByteByte")); }
			ScriptFunction DivideEqual_ByteByte() { mixin(MGF("mDivideEqual_ByteByte", "Function Core.Object.DivideEqual_ByteByte")); }
			ScriptFunction MultiplyEqual_ByteFloat() { mixin(MGF("mMultiplyEqual_ByteFloat", "Function Core.Object.MultiplyEqual_ByteFloat")); }
			ScriptFunction MultiplyEqual_ByteByte() { mixin(MGF("mMultiplyEqual_ByteByte", "Function Core.Object.MultiplyEqual_ByteByte")); }
			ScriptFunction OrOr_BoolBool() { mixin(MGF("mOrOr_BoolBool", "Function Core.Object.OrOr_BoolBool")); }
			ScriptFunction XorXor_BoolBool() { mixin(MGF("mXorXor_BoolBool", "Function Core.Object.XorXor_BoolBool")); }
			ScriptFunction AndAnd_BoolBool() { mixin(MGF("mAndAnd_BoolBool", "Function Core.Object.AndAnd_BoolBool")); }
			ScriptFunction NotEqual_BoolBool() { mixin(MGF("mNotEqual_BoolBool", "Function Core.Object.NotEqual_BoolBool")); }
			ScriptFunction EqualEqual_BoolBool() { mixin(MGF("mEqualEqual_BoolBool", "Function Core.Object.EqualEqual_BoolBool")); }
			ScriptFunction Not_PreBool() { mixin(MGF("mNot_PreBool", "Function Core.Object.Not_PreBool")); }
		}
	}
	static struct Constants
	{
		enum
		{
			InvAspectRatio16x9 = 0.56249,
			InvAspectRatio5x4 = 0.8,
			InvAspectRatio4x3 = 0.75,
			AspectRatio16x9 = 1.77778,
			AspectRatio5x4 = 1.25,
			AspectRatio4x3 = 1.33333,
			INDEX_NONE = -1,
			UnrRotToDeg = 0.00549316540360483,
			DegToUnrRot = 182.0444,
			RadToUnrRot = 10430.3783504704527,
			UnrRotToRad = 0.00009587379924285,
			DegToRad = 0.017453292519943296,
			RadToDeg = 57.295779513082321600,
			Pi = 3.1415926535897932,
			MaxInt = 0x7fffffff,
		}
	}
	enum EDebugBreakType : ubyte
	{
		DEBUGGER_NativeOnly = 0,
		DEBUGGER_ScriptOnly = 1,
		DEBUGGER_Both = 2,
		DEBUGGER_MAX = 3,
	}
	enum EAutomatedRunResult : ubyte
	{
		ARR_Unknown = 0,
		ARR_OOM = 1,
		ARR_Passed = 2,
		ARR_MAX = 3,
	}
	enum EAspectRatioAxisConstraint : ubyte
	{
		AspectRatio_MaintainYFOV = 0,
		AspectRatio_MaintainXFOV = 1,
		AspectRatio_MajorAxisFOV = 2,
		AspectRatio_MAX = 3,
	}
	enum EInterpCurveMode : ubyte
	{
		CIM_Linear = 0,
		CIM_CurveAuto = 1,
		CIM_Constant = 2,
		CIM_CurveUser = 3,
		CIM_CurveBreak = 4,
		CIM_CurveAutoClamped = 5,
		CIM_MAX = 6,
	}
	enum EInterpMethodType : ubyte
	{
		IMT_UseFixedTangentEvalAndNewAutoTangents = 0,
		IMT_UseFixedTangentEval = 1,
		IMT_UseBrokenTangentEval = 2,
		IMT_MAX = 3,
	}
	enum EAxis : ubyte
	{
		AXIS_NONE = 0,
		AXIS_X = 1,
		AXIS_Y = 2,
		AXIS_BLANK = 3,
		AXIS_Z = 4,
		AXIS_MAX = 5,
	}
	enum ETickingGroup : ubyte
	{
		TG_PreAsyncWork = 0,
		TG_DuringAsyncWork = 1,
		TG_PostAsyncWork = 2,
		TG_PostUpdateWork = 3,
		TG_EffectsUpdateWork = 4,
		TG_MAX = 5,
	}
	enum EInputEvent : ubyte
	{
		IE_Pressed = 0,
		IE_Released = 1,
		IE_Repeat = 2,
		IE_DoubleClick = 3,
		IE_Axis = 4,
		IE_MAX = 5,
	}
	enum AlphaBlendType : ubyte
	{
		ABT_Linear = 0,
		ABT_Cubic = 1,
		ABT_Sinusoidal = 2,
		ABT_EaseInOutExponent2 = 3,
		ABT_EaseInOutExponent3 = 4,
		ABT_EaseInOutExponent4 = 5,
		ABT_EaseInOutExponent5 = 6,
		ABT_MAX = 7,
	}
	struct Plane
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Plane")); }
		@property final auto ref
		{
			float X() { mixin(MGPS("float", 0)); }
			float Y() { mixin(MGPS("float", 4)); }
			float Z() { mixin(MGPS("float", 8)); }
		}
		@property final auto ref float W() { mixin(MGPS("float", 12)); }
	}
	struct Guid
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Guid")); }
		@property final auto ref
		{
			int A() { mixin(MGPS("int", 0)); }
			int B() { mixin(MGPS("int", 4)); }
			int C() { mixin(MGPS("int", 8)); }
			int D() { mixin(MGPS("int", 12)); }
		}
	}
	struct Vector2D
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Vector2D")); }
		@property final auto ref
		{
			float X() { mixin(MGPS("float", 0)); }
			float Y() { mixin(MGPS("float", 4)); }
		}
	}
	struct Vector4
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Vector4")); }
		@property final auto ref
		{
			float X() { mixin(MGPS("float", 0)); }
			float Y() { mixin(MGPS("float", 4)); }
			float Z() { mixin(MGPS("float", 8)); }
			float W() { mixin(MGPS("float", 12)); }
		}
	}
	struct LinearColor
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.LinearColor")); }
		@property final auto ref
		{
			float R() { mixin(MGPS("float", 0)); }
			float G() { mixin(MGPS("float", 4)); }
			float B() { mixin(MGPS("float", 8)); }
			float A() { mixin(MGPS("float", 12)); }
		}
	}
	struct Color
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Color")); }
		@property final auto ref
		{
			ubyte R() { mixin(MGPS("ubyte", 2)); }
			ubyte G() { mixin(MGPS("ubyte", 1)); }
			ubyte B() { mixin(MGPS("ubyte", 0)); }
			ubyte A() { mixin(MGPS("ubyte", 3)); }
		}
	}
	struct InterpCurveVector2D
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurveVector2D")); }
		@property final auto ref
		{
			ScriptArray!(UObject.InterpCurvePointVector2D) Points() { mixin(MGPS("ScriptArray!(UObject.InterpCurvePointVector2D)", 0)); }
			UObject.EInterpMethodType InterpMethod() { mixin(MGPS("UObject.EInterpMethodType", 12)); }
		}
	}
	struct InterpCurvePointVector2D
	{
		private ubyte __buffer__[29];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurvePointVector2D")); }
		@property final auto ref
		{
			float InVal() { mixin(MGPS("float", 0)); }
			UObject.Vector2D OutVal() { mixin(MGPS("UObject.Vector2D", 4)); }
			UObject.Vector2D ArriveTangent() { mixin(MGPS("UObject.Vector2D", 12)); }
			UObject.Vector2D LeaveTangent() { mixin(MGPS("UObject.Vector2D", 20)); }
			UObject.EInterpCurveMode InterpMode() { mixin(MGPS("UObject.EInterpCurveMode", 28)); }
		}
	}
	struct InterpCurveFloat
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurveFloat")); }
		@property final auto ref
		{
			ScriptArray!(UObject.InterpCurvePointFloat) Points() { mixin(MGPS("ScriptArray!(UObject.InterpCurvePointFloat)", 0)); }
			UObject.EInterpMethodType InterpMethod() { mixin(MGPS("UObject.EInterpMethodType", 12)); }
		}
	}
	struct Cylinder
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Cylinder")); }
		@property final auto ref
		{
			float Radius() { mixin(MGPS("float", 0)); }
			float Height() { mixin(MGPS("float", 4)); }
		}
	}
	struct InterpCurveVector
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurveVector")); }
		@property final auto ref
		{
			ScriptArray!(UObject.InterpCurvePointVector) Points() { mixin(MGPS("ScriptArray!(UObject.InterpCurvePointVector)", 0)); }
			UObject.EInterpMethodType InterpMethod() { mixin(MGPS("UObject.EInterpMethodType", 12)); }
		}
	}
	struct InterpCurvePointVector
	{
		private ubyte __buffer__[41];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurvePointVector")); }
		@property final auto ref
		{
			float InVal() { mixin(MGPS("float", 0)); }
			Vector OutVal() { mixin(MGPS("Vector", 4)); }
			Vector ArriveTangent() { mixin(MGPS("Vector", 16)); }
			Vector LeaveTangent() { mixin(MGPS("Vector", 28)); }
			UObject.EInterpCurveMode InterpMode() { mixin(MGPS("UObject.EInterpCurveMode", 40)); }
		}
	}
	struct InterpCurvePointFloat
	{
		private ubyte __buffer__[17];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurvePointFloat")); }
		@property final auto ref
		{
			float InVal() { mixin(MGPS("float", 0)); }
			float OutVal() { mixin(MGPS("float", 4)); }
			float ArriveTangent() { mixin(MGPS("float", 8)); }
			float LeaveTangent() { mixin(MGPS("float", 12)); }
			UObject.EInterpCurveMode InterpMode() { mixin(MGPS("UObject.EInterpCurveMode", 16)); }
		}
	}
	struct Quat
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Quat")); }
		@property final auto ref
		{
			float X() { mixin(MGPS("float", 0)); }
			float Y() { mixin(MGPS("float", 4)); }
			float Z() { mixin(MGPS("float", 8)); }
			float W() { mixin(MGPS("float", 12)); }
		}
	}
	struct Matrix
	{
		private ubyte __buffer__[64];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Matrix")); }
		@property final auto ref
		{
			UObject.Plane XPlane() { mixin(MGPS("UObject.Plane", 0)); }
			UObject.Plane YPlane() { mixin(MGPS("UObject.Plane", 16)); }
			UObject.Plane ZPlane() { mixin(MGPS("UObject.Plane", 32)); }
			UObject.Plane WPlane() { mixin(MGPS("UObject.Plane", 48)); }
		}
	}
	struct BoxSphereBounds
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.BoxSphereBounds")); }
		@property final auto ref
		{
			Vector Origin() { mixin(MGPS("Vector", 0)); }
			Vector BoxExtent() { mixin(MGPS("Vector", 12)); }
			float SphereRadius() { mixin(MGPS("float", 24)); }
		}
	}
	struct TwoVectors
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.TwoVectors")); }
		@property final auto ref
		{
			Vector v1() { mixin(MGPS("Vector", 0)); }
			Vector v2() { mixin(MGPS("Vector", 12)); }
		}
	}
	struct TAlphaBlend
	{
		private ubyte __buffer__[21];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.TAlphaBlend")); }
		@property final auto ref
		{
			float AlphaIn() { mixin(MGPS("float", 0)); }
			float AlphaOut() { mixin(MGPS("float", 4)); }
			float AlphaTarget() { mixin(MGPS("float", 8)); }
			float BlendTime() { mixin(MGPS("float", 12)); }
			float BlendTimeToGo() { mixin(MGPS("float", 16)); }
			UObject.AlphaBlendType BlendType() { mixin(MGPS("UObject.AlphaBlendType", 20)); }
		}
	}
	struct BoneAtom
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.BoneAtom")); }
		@property final auto ref
		{
			UObject.Quat Rotation() { mixin(MGPS("UObject.Quat", 0)); }
			Vector Translation() { mixin(MGPS("Vector", 16)); }
			float Scale() { mixin(MGPS("float", 28)); }
		}
	}
	struct OctreeElementId
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.OctreeElementId")); }
		@property final auto ref
		{
			Pointer Node() { mixin(MGPS("Pointer", 0)); }
			int ElementIndex() { mixin(MGPS("int", 4)); }
		}
	}
	struct RenderCommandFence
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.RenderCommandFence")); }
		@property final auto ref int NumPendingFences() { mixin(MGPS("int", 0)); }
	}
	struct RawDistribution
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.RawDistribution")); }
		@property final auto ref
		{
			ubyte Type() { mixin(MGPS("ubyte", 0)); }
			ubyte Op() { mixin(MGPS("ubyte", 1)); }
			ubyte LookupTableNumElements() { mixin(MGPS("ubyte", 2)); }
			ubyte LookupTableChunkSize() { mixin(MGPS("ubyte", 3)); }
			ScriptArray!(float) LookupTable() { mixin(MGPS("ScriptArray!(float)", 4)); }
			float LookupTableTimeScale() { mixin(MGPS("float", 16)); }
			float LookupTableStartTime() { mixin(MGPS("float", 20)); }
		}
	}
	struct InterpCurveLinearColor
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurveLinearColor")); }
		@property final auto ref
		{
			ScriptArray!(UObject.InterpCurvePointLinearColor) Points() { mixin(MGPS("ScriptArray!(UObject.InterpCurvePointLinearColor)", 0)); }
			UObject.EInterpMethodType InterpMethod() { mixin(MGPS("UObject.EInterpMethodType", 12)); }
		}
	}
	struct InterpCurvePointLinearColor
	{
		private ubyte __buffer__[53];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurvePointLinearColor")); }
		@property final auto ref
		{
			float InVal() { mixin(MGPS("float", 0)); }
			UObject.LinearColor OutVal() { mixin(MGPS("UObject.LinearColor", 4)); }
			UObject.LinearColor ArriveTangent() { mixin(MGPS("UObject.LinearColor", 20)); }
			UObject.LinearColor LeaveTangent() { mixin(MGPS("UObject.LinearColor", 36)); }
			UObject.EInterpCurveMode InterpMode() { mixin(MGPS("UObject.EInterpCurveMode", 52)); }
		}
	}
	struct InterpCurveQuat
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurveQuat")); }
		@property final auto ref
		{
			ScriptArray!(UObject.InterpCurvePointQuat) Points() { mixin(MGPS("ScriptArray!(UObject.InterpCurvePointQuat)", 0)); }
			UObject.EInterpMethodType InterpMethod() { mixin(MGPS("UObject.EInterpMethodType", 12)); }
		}
	}
	struct InterpCurvePointQuat
	{
		private ubyte __buffer__[65];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurvePointQuat")); }
		@property final auto ref
		{
			float InVal() { mixin(MGPS("float", 0)); }
			UObject.Quat OutVal() { mixin(MGPS("UObject.Quat", 16)); }
			UObject.Quat ArriveTangent() { mixin(MGPS("UObject.Quat", 32)); }
			UObject.Quat LeaveTangent() { mixin(MGPS("UObject.Quat", 48)); }
			UObject.EInterpCurveMode InterpMode() { mixin(MGPS("UObject.EInterpCurveMode", 64)); }
		}
	}
	struct InterpCurveTwoVectors
	{
		private ubyte __buffer__[13];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurveTwoVectors")); }
		@property final auto ref
		{
			ScriptArray!(UObject.InterpCurvePointTwoVectors) Points() { mixin(MGPS("ScriptArray!(UObject.InterpCurvePointTwoVectors)", 0)); }
			UObject.EInterpMethodType InterpMethod() { mixin(MGPS("UObject.EInterpMethodType", 12)); }
		}
	}
	struct InterpCurvePointTwoVectors
	{
		private ubyte __buffer__[77];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InterpCurvePointTwoVectors")); }
		@property final auto ref
		{
			float InVal() { mixin(MGPS("float", 0)); }
			UObject.TwoVectors OutVal() { mixin(MGPS("UObject.TwoVectors", 4)); }
			UObject.TwoVectors ArriveTangent() { mixin(MGPS("UObject.TwoVectors", 28)); }
			UObject.TwoVectors LeaveTangent() { mixin(MGPS("UObject.TwoVectors", 52)); }
			UObject.EInterpCurveMode InterpMode() { mixin(MGPS("UObject.EInterpCurveMode", 76)); }
		}
	}
	struct Box
	{
		private ubyte __buffer__[25];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Box")); }
		@property final auto ref
		{
			Vector Min() { mixin(MGPS("Vector", 0)); }
			Vector Max() { mixin(MGPS("Vector", 12)); }
			ubyte IsValid() { mixin(MGPS("ubyte", 24)); }
		}
	}
	struct TPOV
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.TPOV")); }
		@property final auto ref
		{
			Vector Location() { mixin(MGPS("Vector", 0)); }
			Rotator Rotation() { mixin(MGPS("Rotator", 12)); }
			float FOV() { mixin(MGPS("float", 24)); }
		}
	}
	struct SHVectorRGB
	{
		private ubyte __buffer__[144];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.SHVectorRGB")); }
		@property final auto ref
		{
			UObject.SHVector R() { mixin(MGPS("UObject.SHVector", 0)); }
			UObject.SHVector G() { mixin(MGPS("UObject.SHVector", 48)); }
			UObject.SHVector B() { mixin(MGPS("UObject.SHVector", 96)); }
		}
	}
	struct SHVector
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.SHVector")); }
		@property final auto ref
		{
			float V() { mixin(MGPS("float", 0)); }
			float Padding() { mixin(MGPS("float", 36)); }
		}
	}
	struct IntPoint
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.IntPoint")); }
		@property final auto ref
		{
			int X() { mixin(MGPS("int", 0)); }
			int Y() { mixin(MGPS("int", 4)); }
		}
	}
	struct InlinePointerArray_Mirror
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.InlinePointerArray_Mirror")); }
		@property final auto ref
		{
			Pointer InlineData() { mixin(MGPS("Pointer", 0)); }
			UObject.Array_Mirror SecondaryData() { mixin(MGPS("UObject.Array_Mirror", 4)); }
		}
	}
	struct Array_Mirror
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Array_Mirror")); }
		@property final auto ref
		{
			Pointer Data() { mixin(MGPS("Pointer", 0)); }
			int ArrayNum() { mixin(MGPS("int", 4)); }
			int ArrayMax() { mixin(MGPS("int", 8)); }
		}
	}
	struct IndirectArray_Mirror
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.IndirectArray_Mirror")); }
		@property final auto ref
		{
			Pointer Data() { mixin(MGPS("Pointer", 0)); }
			int ArrayNum() { mixin(MGPS("int", 4)); }
			int ArrayMax() { mixin(MGPS("int", 8)); }
		}
	}
	struct FColorVertexBuffer_Mirror
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.FColorVertexBuffer_Mirror")); }
		@property final auto ref
		{
			Pointer VfTable() { mixin(MGPS("Pointer", 0)); }
			Pointer VertexData() { mixin(MGPS("Pointer", 4)); }
			int Data() { mixin(MGPS("int", 8)); }
			int Stride() { mixin(MGPS("int", 12)); }
			int NumVertices() { mixin(MGPS("int", 16)); }
		}
	}
	struct RenderCommandFence_Mirror
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.RenderCommandFence_Mirror")); }
		@property final auto ref int NumPendingFences() { mixin(MGPS("int", 0)); }
	}
	struct UntypedBulkData_Mirror
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.UntypedBulkData_Mirror")); }
		@property final auto ref
		{
			Pointer VfTable() { mixin(MGPS("Pointer", 0)); }
			int BulkDataFlags() { mixin(MGPS("int", 4)); }
			int ElementCount() { mixin(MGPS("int", 8)); }
			int BulkDataOffsetInFile() { mixin(MGPS("int", 12)); }
			int BulkDataSizeOnDisk() { mixin(MGPS("int", 16)); }
			int SavedBulkDataFlags() { mixin(MGPS("int", 20)); }
			int SavedElementCount() { mixin(MGPS("int", 24)); }
			int SavedBulkDataOffsetInFile() { mixin(MGPS("int", 28)); }
			int SavedBulkDataSizeOnDisk() { mixin(MGPS("int", 32)); }
			Pointer BulkData() { mixin(MGPS("Pointer", 36)); }
			int LockStatus() { mixin(MGPS("int", 40)); }
			Pointer AttachedAr() { mixin(MGPS("Pointer", 44)); }
			int bShouldFreeOnEmpty() { mixin(MGPS("int", 48)); }
		}
	}
	struct MultiMap_Mirror
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.MultiMap_Mirror")); }
		@property final auto ref UObject.Set_Mirror Pairs() { mixin(MGPS("UObject.Set_Mirror", 0)); }
	}
	struct Map_Mirror
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Map_Mirror")); }
		@property final auto ref UObject.Set_Mirror Pairs() { mixin(MGPS("UObject.Set_Mirror", 0)); }
	}
	struct Set_Mirror
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Set_Mirror")); }
		@property final auto ref
		{
			UObject.SparseArray_Mirror Elements() { mixin(MGPS("UObject.SparseArray_Mirror", 0)); }
			Pointer Hash() { mixin(MGPS("Pointer", 48)); }
			int InlineHash() { mixin(MGPS("int", 52)); }
			int HashSize() { mixin(MGPS("int", 56)); }
		}
	}
	struct SparseArray_Mirror
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.SparseArray_Mirror")); }
		@property final auto ref
		{
			ScriptArray!(int) Elements() { mixin(MGPS("ScriptArray!(int)", 0)); }
			UObject.BitArray_Mirror AllocationFlags() { mixin(MGPS("UObject.BitArray_Mirror", 12)); }
			int FirstFreeIndex() { mixin(MGPS("int", 40)); }
			int NumFreeIndices() { mixin(MGPS("int", 44)); }
		}
	}
	struct BitArray_Mirror
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.BitArray_Mirror")); }
		@property final auto ref
		{
			Pointer IndirectData() { mixin(MGPS("Pointer", 0)); }
			int InlineData() { mixin(MGPS("int", 4)); }
			int NumBits() { mixin(MGPS("int", 20)); }
			int MaxBits() { mixin(MGPS("int", 24)); }
		}
	}
	struct ThreadSafeCounter
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.ThreadSafeCounter")); }
		@property final auto ref int Value() { mixin(MGPS("int", 0)); }
	}
	struct Double
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.Object.Double")); }
		@property final auto ref
		{
			int A() { mixin(MGPS("int", 0)); }
			int B() { mixin(MGPS("int", 4)); }
		}
	}
	@property final auto ref
	{
		UObject Outer() { mixin(MGPC("UObject", 40)); }
		ScriptName Name() { mixin(MGPC("ScriptName", 44)); }
		Pointer VfTableObject() { mixin(MGPC("Pointer", 0)); }
		int ObjectInternalInteger() { mixin(MGPC("int", 4)); }
		QWord ObjectFlags() { mixin(MGPC("QWord", 8)); }
		Pointer HashNext() { mixin(MGPC("Pointer", 16)); }
		Pointer HashOuterNext() { mixin(MGPC("Pointer", 20)); }
		Pointer StateFrame() { mixin(MGPC("Pointer", 24)); }
		UObject LinkerVar() { mixin(MGPC("UObject", 28)); }
		Pointer LinkerIndex() { mixin(MGPC("Pointer", 32)); }
		int NetIndex() { mixin(MGPC("int", 36)); }
		ScriptClass ClassVar() { mixin(MGPC("ScriptClass", 52)); }
		UObject ObjectArchetype() { mixin(MGPC("UObject", 56)); }
	}
final:
	int GetBuildChangelistNumber()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBuildChangelistNumber, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetEngineVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEngineVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void GetSystemTime(ref int Year, ref int Month, ref int DayOfWeek, ref int Day, ref int Hour, ref int Min, ref int Sec, ref int MSec)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Year;
		*cast(int*)&params[4] = Month;
		*cast(int*)&params[8] = DayOfWeek;
		*cast(int*)&params[12] = Day;
		*cast(int*)&params[16] = Hour;
		*cast(int*)&params[20] = Min;
		*cast(int*)&params[24] = Sec;
		*cast(int*)&params[28] = MSec;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSystemTime, params.ptr, cast(void*)0);
		Year = *cast(int*)params.ptr;
		Month = *cast(int*)&params[4];
		DayOfWeek = *cast(int*)&params[8];
		Day = *cast(int*)&params[12];
		Hour = *cast(int*)&params[16];
		Min = *cast(int*)&params[20];
		Sec = *cast(int*)&params[24];
		MSec = *cast(int*)&params[28];
	}
	ScriptString TimeStamp()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeStamp, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	Vector TransformVectorByRotation(Rotator SourceRotation, Vector SourceVector, bool* bInverse = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Rotator*)params.ptr = SourceRotation;
		*cast(Vector*)&params[12] = SourceVector;
		if (bInverse !is null)
			*cast(bool*)&params[24] = *bInverse;
		(cast(ScriptObject)this).ProcessEvent(Functions.TransformVectorByRotation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	ScriptName GetPackageName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPackageName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	bool IsPendingKill()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPendingKill, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float ByteToFloat(ubyte inputByte, bool* bSigned = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = inputByte;
		if (bSigned !is null)
			*cast(bool*)&params[4] = *bSigned;
		(cast(ScriptObject)this).ProcessEvent(Functions.ByteToFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	ubyte FloatToByte(float inputFloat, bool* bSigned = null)
	{
		ubyte params[9];
		params[] = 0;
		*cast(float*)params.ptr = inputFloat;
		if (bSigned !is null)
			*cast(bool*)&params[4] = *bSigned;
		(cast(ScriptObject)this).ProcessEvent(Functions.FloatToByte, params.ptr, cast(void*)0);
		return params[8];
	}
	static float UnwindHeading(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.UnwindHeading, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float FindDeltaAngle(float A1, float A2)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A1;
		*cast(float*)&params[4] = A2;
		StaticClass.ProcessEvent(Functions.FindDeltaAngle, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float GetHeadingAngle(Vector Dir)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		StaticClass.ProcessEvent(Functions.GetHeadingAngle, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static void GetAngularDegreesFromRadians(ref UObject.Vector2D OutFOV)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = OutFOV;
		StaticClass.ProcessEvent(Functions.GetAngularDegreesFromRadians, params.ptr, cast(void*)0);
		OutFOV = *cast(UObject.Vector2D*)params.ptr;
	}
	static float Acos(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Acos, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static void GetAngularFromDotDist(ref UObject.Vector2D OutAngDist, UObject.Vector2D DotDist)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = OutAngDist;
		*cast(UObject.Vector2D*)&params[8] = DotDist;
		StaticClass.ProcessEvent(Functions.GetAngularFromDotDist, params.ptr, cast(void*)0);
		OutAngDist = *cast(UObject.Vector2D*)params.ptr;
	}
	static bool GetAngularDistance(ref UObject.Vector2D OutAngularDist, Vector Direction, Vector AxisX, Vector AxisY, Vector AxisZ)
	{
		ubyte params[60];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = OutAngularDist;
		*cast(Vector*)&params[8] = Direction;
		*cast(Vector*)&params[20] = AxisX;
		*cast(Vector*)&params[32] = AxisY;
		*cast(Vector*)&params[44] = AxisZ;
		StaticClass.ProcessEvent(Functions.GetAngularDistance, params.ptr, cast(void*)0);
		OutAngularDist = *cast(UObject.Vector2D*)params.ptr;
		return *cast(bool*)&params[56];
	}
	static bool GetDotDistance(ref UObject.Vector2D OutDotDist, Vector Direction, Vector AxisX, Vector AxisY, Vector AxisZ)
	{
		ubyte params[60];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = OutDotDist;
		*cast(Vector*)&params[8] = Direction;
		*cast(Vector*)&params[20] = AxisX;
		*cast(Vector*)&params[32] = AxisY;
		*cast(Vector*)&params[44] = AxisZ;
		StaticClass.ProcessEvent(Functions.GetDotDistance, params.ptr, cast(void*)0);
		OutDotDist = *cast(UObject.Vector2D*)params.ptr;
		return *cast(bool*)&params[56];
	}
	static Vector PointProjectToPlane(Vector Point, Vector A, Vector B, Vector C)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = A;
		*cast(Vector*)&params[24] = B;
		*cast(Vector*)&params[36] = C;
		StaticClass.ProcessEvent(Functions.PointProjectToPlane, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[48];
	}
	float PointDistToPlane(Vector Point, Rotator Orientation, Vector Origin, Vector* out_ClosestPoint = null)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Rotator*)&params[12] = Orientation;
		*cast(Vector*)&params[24] = Origin;
		if (out_ClosestPoint !is null)
			*cast(Vector*)&params[36] = *out_ClosestPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointDistToPlane, params.ptr, cast(void*)0);
		if (out_ClosestPoint !is null)
			*out_ClosestPoint = *cast(Vector*)&params[36];
		return *cast(float*)&params[48];
	}
	float PointDistToSegment(Vector Point, Vector StartPoint, Vector EndPoint, Vector* OutClosestPoint = null)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = StartPoint;
		*cast(Vector*)&params[24] = EndPoint;
		if (OutClosestPoint !is null)
			*cast(Vector*)&params[36] = *OutClosestPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointDistToSegment, params.ptr, cast(void*)0);
		if (OutClosestPoint !is null)
			*OutClosestPoint = *cast(Vector*)&params[36];
		return *cast(float*)&params[48];
	}
	float PointDistToLine(Vector Point, Vector Line, Vector Origin, Vector* OutClosestPoint = null)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = Line;
		*cast(Vector*)&params[24] = Origin;
		if (OutClosestPoint !is null)
			*cast(Vector*)&params[36] = *OutClosestPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointDistToLine, params.ptr, cast(void*)0);
		if (OutClosestPoint !is null)
			*OutClosestPoint = *cast(Vector*)&params[36];
		return *cast(float*)&params[48];
	}
	static bool GetPerObjectConfigSections(ScriptClass SearchClass, ref ScriptArray!(ScriptString) out_SectionNames, UObject* ObjectOuter = null, int* MaxResults = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SearchClass;
		*cast(ScriptArray!(ScriptString)*)&params[4] = out_SectionNames;
		if (ObjectOuter !is null)
			*cast(UObject*)&params[16] = *ObjectOuter;
		if (MaxResults !is null)
			*cast(int*)&params[20] = *MaxResults;
		StaticClass.ProcessEvent(Functions.GetPerObjectConfigSections, params.ptr, cast(void*)0);
		out_SectionNames = *cast(ScriptArray!(ScriptString)*)&params[4];
		return *cast(bool*)&params[24];
	}
	static void StaticSaveConfig()
	{
		StaticClass.ProcessEvent(Functions.StaticSaveConfig, cast(void*)0, cast(void*)0);
	}
	void SaveConfig()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveConfig, cast(void*)0, cast(void*)0);
	}
	static UObject FindObject(ScriptString ObjectName, ScriptClass ObjectClass)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectName;
		*cast(ScriptClass*)&params[12] = ObjectClass;
		StaticClass.ProcessEvent(Functions.FindObject, params.ptr, cast(void*)0);
		return *cast(UObject*)&params[16];
	}
	static UObject DynamicLoadObject(ScriptString ObjectName, ScriptClass ObjectClass, bool* MayFail = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectName;
		*cast(ScriptClass*)&params[12] = ObjectClass;
		if (MayFail !is null)
			*cast(bool*)&params[16] = *MayFail;
		StaticClass.ProcessEvent(Functions.DynamicLoadObject, params.ptr, cast(void*)0);
		return *cast(UObject*)&params[20];
	}
	static ScriptName GetEnum(UObject E, int I)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject*)params.ptr = E;
		*cast(int*)&params[4] = I;
		StaticClass.ProcessEvent(Functions.GetEnum, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	void Disable(ScriptName ProbeFunc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProbeFunc;
		(cast(ScriptObject)this).ProcessEvent(Functions.Disable, params.ptr, cast(void*)0);
	}
	void Enable(ScriptName ProbeFunc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProbeFunc;
		(cast(ScriptObject)this).ProcessEvent(Functions.Enable, params.ptr, cast(void*)0);
	}
	void ContinuedState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ContinuedState, cast(void*)0, cast(void*)0);
	}
	void PausedState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PausedState, cast(void*)0, cast(void*)0);
	}
	void PoppedState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PoppedState, cast(void*)0, cast(void*)0);
	}
	void PushedState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushedState, cast(void*)0, cast(void*)0);
	}
	void EndState(ScriptName NextStateName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NextStateName;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndState, params.ptr, cast(void*)0);
	}
	void BeginState(ScriptName PreviousStateName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PreviousStateName;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginState, params.ptr, cast(void*)0);
	}
	void DumpStateStack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DumpStateStack, cast(void*)0, cast(void*)0);
	}
	void PopState(bool* bPopAll = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPopAll !is null)
			*cast(bool*)params.ptr = *bPopAll;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopState, params.ptr, cast(void*)0);
	}
	void PushState(ScriptName NewState, ScriptName* NewLabel = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		if (NewLabel !is null)
			*cast(ScriptName*)&params[8] = *NewLabel;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushState, params.ptr, cast(void*)0);
	}
	ScriptName GetStateName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStateName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	bool IsChildState(ScriptName TestState, ScriptName TestParentState)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TestState;
		*cast(ScriptName*)&params[8] = TestParentState;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsChildState, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsInState(ScriptName TestState, bool* bTestStateStack = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TestState;
		if (bTestStateStack !is null)
			*cast(bool*)&params[8] = *bTestStateStack;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInState, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void GotoState(ScriptName* NewState = null, ScriptName* Label = null, bool* bForceEvents = null, bool* bKeepStack = null)
	{
		ubyte params[24];
		params[] = 0;
		if (NewState !is null)
			*cast(ScriptName*)params.ptr = *NewState;
		if (Label !is null)
			*cast(ScriptName*)&params[8] = *Label;
		if (bForceEvents !is null)
			*cast(bool*)&params[16] = *bForceEvents;
		if (bKeepStack !is null)
			*cast(bool*)&params[20] = *bKeepStack;
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoState, params.ptr, cast(void*)0);
	}
	static bool IsUTracing()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsUTracing, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static void SetUTracing(bool bShouldUTrace)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldUTrace;
		StaticClass.ProcessEvent(Functions.SetUTracing, params.ptr, cast(void*)0);
	}
	static ScriptName GetFuncName()
	{
		ubyte params[8];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetFuncName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	static void DebugBreak(int* UserFlags = null, UObject.EDebugBreakType* DebuggerType = null)
	{
		ubyte params[5];
		params[] = 0;
		if (UserFlags !is null)
			*cast(int*)params.ptr = *UserFlags;
		if (DebuggerType !is null)
			*cast(UObject.EDebugBreakType*)&params[4] = *DebuggerType;
		StaticClass.ProcessEvent(Functions.DebugBreak, params.ptr, cast(void*)0);
	}
	static ScriptString GetScriptTrace()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetScriptTrace, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static void ScriptTrace()
	{
		StaticClass.ProcessEvent(Functions.ScriptTrace, cast(void*)0, cast(void*)0);
	}
	static ScriptString ParseLocalizedPropertyPath(ScriptString PathName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PathName;
		StaticClass.ProcessEvent(Functions.ParseLocalizedPropertyPath, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static ScriptString Localize(ScriptString SectionName, ScriptString KeyName, ScriptString PackageName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SectionName;
		*cast(ScriptString*)&params[12] = KeyName;
		*cast(ScriptString*)&params[24] = PackageName;
		StaticClass.ProcessEvent(Functions.Localize, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[36];
	}
	static void ParseStringIntoArray(ScriptString BaseString, ref ScriptArray!(ScriptString) Pieces, ScriptString delim, bool bCullEmpty)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BaseString;
		*cast(ScriptArray!(ScriptString)*)&params[12] = Pieces;
		*cast(ScriptString*)&params[24] = delim;
		*cast(bool*)&params[36] = bCullEmpty;
		StaticClass.ProcessEvent(Functions.ParseStringIntoArray, params.ptr, cast(void*)0);
		Pieces = *cast(ScriptArray!(ScriptString)*)&params[12];
	}
	static void WarnInternal(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		StaticClass.ProcessEvent(Functions.WarnInternal, params.ptr, cast(void*)0);
	}
	static void LogInternal(ScriptString S, ScriptName* Tag = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		if (Tag !is null)
			*cast(ScriptName*)&params[12] = *Tag;
		StaticClass.ProcessEvent(Functions.LogInternal, params.ptr, cast(void*)0);
	}
	static UObject.LinearColor Subtract_LinearColorLinearColor(UObject.LinearColor A, UObject.LinearColor B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = A;
		*cast(UObject.LinearColor*)&params[16] = B;
		StaticClass.ProcessEvent(Functions.Subtract_LinearColorLinearColor, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[32];
	}
	static UObject.LinearColor Multiply_LinearColorFloat(UObject.LinearColor LC, float Mult)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = LC;
		*cast(float*)&params[16] = Mult;
		StaticClass.ProcessEvent(Functions.Multiply_LinearColorFloat, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[20];
	}
	static UObject.LinearColor ColorToLinearColor(UObject.Color OldColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = OldColor;
		StaticClass.ProcessEvent(Functions.ColorToLinearColor, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[4];
	}
	static UObject.LinearColor MakeLinearColor(float R, float G, float B, float A)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = R;
		*cast(float*)&params[4] = G;
		*cast(float*)&params[8] = B;
		*cast(float*)&params[12] = A;
		StaticClass.ProcessEvent(Functions.MakeLinearColor, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[16];
	}
	static UObject.Color LerpColor(UObject.Color A, UObject.Color B, float Alpha)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		StaticClass.ProcessEvent(Functions.LerpColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[12];
	}
	static UObject.Color MakeColor(ubyte R, ubyte G, ubyte B, ubyte* A = null)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = R;
		params[1] = G;
		params[2] = B;
		if (A !is null)
			params[3] = *A;
		StaticClass.ProcessEvent(Functions.MakeColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
	}
	static UObject.Color Add_ColorColor(UObject.Color A, UObject.Color B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Add_ColorColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	static UObject.Color Multiply_ColorFloat(UObject.Color A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Multiply_ColorFloat, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	static UObject.Color Multiply_FloatColor(float A, UObject.Color B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Multiply_FloatColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	static UObject.Color Subtract_ColorColor(UObject.Color A, UObject.Color B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Subtract_ColorColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	UObject.Vector2D EvalInterpCurveVector2D(UObject.InterpCurveVector2D Vector2DCurve, float InVal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.InterpCurveVector2D*)params.ptr = Vector2DCurve;
		*cast(float*)&params[16] = InVal;
		(cast(ScriptObject)this).ProcessEvent(Functions.EvalInterpCurveVector2D, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[20];
	}
	Vector EvalInterpCurveVector(UObject.InterpCurveVector VectorCurve, float InVal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.InterpCurveVector*)params.ptr = VectorCurve;
		*cast(float*)&params[16] = InVal;
		(cast(ScriptObject)this).ProcessEvent(Functions.EvalInterpCurveVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	float EvalInterpCurveFloat(UObject.InterpCurveFloat FloatCurve, float InVal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.InterpCurveFloat*)params.ptr = FloatCurve;
		*cast(float*)&params[16] = InVal;
		(cast(ScriptObject)this).ProcessEvent(Functions.EvalInterpCurveFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	static UObject.Vector2D vect2d(float InX, float InY)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InX;
		*cast(float*)&params[4] = InY;
		StaticClass.ProcessEvent(Functions.vect2d, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[8];
	}
	static float GetMappedRangeValue(UObject.Vector2D InputRange, UObject.Vector2D OutputRange, float Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = InputRange;
		*cast(UObject.Vector2D*)&params[8] = OutputRange;
		*cast(float*)&params[16] = Value;
		StaticClass.ProcessEvent(Functions.GetMappedRangeValue, params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	static float GetRangePctByValue(UObject.Vector2D Range, float Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = Range;
		*cast(float*)&params[8] = Value;
		StaticClass.ProcessEvent(Functions.GetRangePctByValue, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float GetRangeValueByPct(UObject.Vector2D Range, float Pct)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = Range;
		*cast(float*)&params[8] = Pct;
		StaticClass.ProcessEvent(Functions.GetRangeValueByPct, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static UObject.Vector2D SubtractEqual_Vector2DVector2D(ref UObject.Vector2D A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(UObject.Vector2D*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_Vector2DVector2D, params.ptr, cast(void*)0);
		A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[16];
	}
	static UObject.Vector2D AddEqual_Vector2DVector2D(ref UObject.Vector2D A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(UObject.Vector2D*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.AddEqual_Vector2DVector2D, params.ptr, cast(void*)0);
		A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[16];
	}
	static UObject.Vector2D DivideEqual_Vector2DFloat(ref UObject.Vector2D A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(float*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.DivideEqual_Vector2DFloat, params.ptr, cast(void*)0);
		A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[12];
	}
	static UObject.Vector2D MultiplyEqual_Vector2DFloat(ref UObject.Vector2D A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(float*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_Vector2DFloat, params.ptr, cast(void*)0);
		A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[12];
	}
	static UObject.Vector2D Divide_Vector2DFloat(UObject.Vector2D A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(float*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.Divide_Vector2DFloat, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[12];
	}
	static UObject.Vector2D Multiply_Vector2DFloat(UObject.Vector2D A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(float*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.Multiply_Vector2DFloat, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[12];
	}
	static UObject.Vector2D Subtract_Vector2DVector2D(UObject.Vector2D A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(UObject.Vector2D*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.Subtract_Vector2DVector2D, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[16];
	}
	static UObject.Vector2D Add_Vector2DVector2D(UObject.Vector2D A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(UObject.Vector2D*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.Add_Vector2DVector2D, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[16];
	}
	static UObject.Quat Subtract_QuatQuat(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		StaticClass.ProcessEvent(Functions.Subtract_QuatQuat, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	static UObject.Quat Add_QuatQuat(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		StaticClass.ProcessEvent(Functions.Add_QuatQuat, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	static UObject.Quat QuatSlerp(UObject.Quat A, UObject.Quat B, float Alpha, bool* bShortestPath = null)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		*cast(float*)&params[32] = Alpha;
		if (bShortestPath !is null)
			*cast(bool*)&params[36] = *bShortestPath;
		StaticClass.ProcessEvent(Functions.QuatSlerp, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[48];
	}
	static Rotator QuatToRotator(UObject.Quat A)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.QuatToRotator, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	static UObject.Quat QuatFromRotator(Rotator A)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.QuatFromRotator, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	static UObject.Quat QuatFromAxisAndAngle(Vector Axis, float Angle)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Axis;
		*cast(float*)&params[12] = Angle;
		StaticClass.ProcessEvent(Functions.QuatFromAxisAndAngle, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	static UObject.Quat QuatFindBetween(Vector A, Vector B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.QuatFindBetween, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	static Vector QuatRotateVector(UObject.Quat A, Vector B)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(Vector*)&params[16] = B;
		StaticClass.ProcessEvent(Functions.QuatRotateVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	static UObject.Quat QuatInvert(UObject.Quat A)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.QuatInvert, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	static float QuatDot(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		StaticClass.ProcessEvent(Functions.QuatDot, params.ptr, cast(void*)0);
		return *cast(float*)&params[32];
	}
	static UObject.Quat QuatProduct(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		StaticClass.ProcessEvent(Functions.QuatProduct, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	static Vector MatrixGetAxis(UObject.Matrix TM, UObject.EAxis Axis)
	{
		ubyte params[80];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(UObject.EAxis*)&params[64] = Axis;
		StaticClass.ProcessEvent(Functions.MatrixGetAxis, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[68];
	}
	static Vector MatrixGetOrigin(UObject.Matrix TM)
	{
		ubyte params[76];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		StaticClass.ProcessEvent(Functions.MatrixGetOrigin, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[64];
	}
	static Rotator MatrixGetRotator(UObject.Matrix TM)
	{
		ubyte params[76];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		StaticClass.ProcessEvent(Functions.MatrixGetRotator, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[64];
	}
	static UObject.Matrix MakeRotationMatrix(Rotator Rotation)
	{
		ubyte params[80];
		params[] = 0;
		*cast(Rotator*)params.ptr = Rotation;
		StaticClass.ProcessEvent(Functions.MakeRotationMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	static UObject.Matrix MakeRotationTranslationMatrix(Vector Translation, Rotator Rotation)
	{
		ubyte params[96];
		params[] = 0;
		*cast(Vector*)params.ptr = Translation;
		*cast(Rotator*)&params[12] = Rotation;
		StaticClass.ProcessEvent(Functions.MakeRotationTranslationMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[32];
	}
	static Vector InverseTransformNormal(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		StaticClass.ProcessEvent(Functions.InverseTransformNormal, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	static Vector TransformNormal(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		StaticClass.ProcessEvent(Functions.TransformNormal, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	static Vector InverseTransformVector(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		StaticClass.ProcessEvent(Functions.InverseTransformVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	static Vector TransformVector(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		StaticClass.ProcessEvent(Functions.TransformVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	static UObject.Matrix Multiply_MatrixMatrix(UObject.Matrix A, UObject.Matrix B)
	{
		ubyte params[192];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = A;
		*cast(UObject.Matrix*)&params[64] = B;
		StaticClass.ProcessEvent(Functions.Multiply_MatrixMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[128];
	}
	static bool NotEqual_NameName(ScriptName A, ScriptName B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = A;
		*cast(ScriptName*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_NameName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static bool EqualEqual_NameName(ScriptName A, ScriptName B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = A;
		*cast(ScriptName*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_NameName, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsA(ScriptName ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsA, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool ClassIsChildOf(ScriptClass TestClass, ScriptClass ParentClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TestClass;
		*cast(ScriptClass*)&params[4] = ParentClass;
		StaticClass.ProcessEvent(Functions.ClassIsChildOf, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool NotEqual_InterfaceInterface(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* A, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = A;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_InterfaceInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static bool EqualEqual_InterfaceInterface(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* A, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = A;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_InterfaceInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static bool NotEqual_ObjectObject(UObject A, UObject B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject*)params.ptr = A;
		*cast(UObject*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_ObjectObject, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool EqualEqual_ObjectObject(UObject A, UObject B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject*)params.ptr = A;
		*cast(UObject*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_ObjectObject, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static ScriptString PathName(UObject CheckObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject*)params.ptr = CheckObject;
		StaticClass.ProcessEvent(Functions.PathName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptArray!(ScriptString) SplitString(ScriptString Source, ScriptString* Delimiter = null, bool* bCullEmpty = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Source;
		if (Delimiter !is null)
			*cast(ScriptString*)&params[12] = *Delimiter;
		if (bCullEmpty !is null)
			*cast(bool*)&params[24] = *bCullEmpty;
		StaticClass.ProcessEvent(Functions.SplitString, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ScriptString)*)&params[28];
	}
	static void JoinArray(ScriptArray!(ScriptString) StringArray, ref ScriptString out_Result, ScriptString* delim = null, bool* bIgnoreBlanks = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = StringArray;
		*cast(ScriptString*)&params[12] = out_Result;
		if (delim !is null)
			*cast(ScriptString*)&params[24] = *delim;
		if (bIgnoreBlanks !is null)
			*cast(bool*)&params[36] = *bIgnoreBlanks;
		StaticClass.ProcessEvent(Functions.JoinArray, params.ptr, cast(void*)0);
		out_Result = *cast(ScriptString*)&params[12];
	}
	static ScriptString GetRightMost(ScriptString Text)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		StaticClass.ProcessEvent(Functions.GetRightMost, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static ScriptString ConcatEqual_StrStr(ref ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.ConcatEqual_StrStr, params.ptr, cast(void*)0);
		A = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[24];
	}
	static ScriptString Split(ScriptString Text, ScriptString SplitStr, bool* bOmitSplitStr = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(ScriptString*)&params[12] = SplitStr;
		if (bOmitSplitStr !is null)
			*cast(bool*)&params[24] = *bOmitSplitStr;
		StaticClass.ProcessEvent(Functions.Split, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[28];
	}
	static ScriptString Repl(ScriptString Src, ScriptString Match, ScriptString With, bool* bCaseSensitive = null)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Src;
		*cast(ScriptString*)&params[12] = Match;
		*cast(ScriptString*)&params[24] = With;
		if (bCaseSensitive !is null)
			*cast(bool*)&params[36] = *bCaseSensitive;
		StaticClass.ProcessEvent(Functions.Repl, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[40];
	}
	static int Asc(ScriptString S)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		StaticClass.ProcessEvent(Functions.Asc, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	static ScriptString Chr(int I)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = I;
		StaticClass.ProcessEvent(Functions.Chr, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static ScriptString Locs(ScriptString S)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		StaticClass.ProcessEvent(Functions.Locs, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static ScriptString Caps(ScriptString S)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		StaticClass.ProcessEvent(Functions.Caps, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	static ScriptString Right(ScriptString S, int I)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(int*)&params[12] = I;
		StaticClass.ProcessEvent(Functions.Right, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	static ScriptString Left(ScriptString S, int I)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(int*)&params[12] = I;
		StaticClass.ProcessEvent(Functions.Left, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	static ScriptString Mid(ScriptString S, int I, int* J = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(int*)&params[12] = I;
		if (J !is null)
			*cast(int*)&params[16] = *J;
		StaticClass.ProcessEvent(Functions.Mid, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static int InStr(ScriptString S, ScriptString T, bool* bSearchFromRight = null, bool* bIgnoreCase = null, int* StartPos = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptString*)&params[12] = T;
		if (bSearchFromRight !is null)
			*cast(bool*)&params[24] = *bSearchFromRight;
		if (bIgnoreCase !is null)
			*cast(bool*)&params[28] = *bIgnoreCase;
		if (StartPos !is null)
			*cast(int*)&params[32] = *StartPos;
		StaticClass.ProcessEvent(Functions.InStr, params.ptr, cast(void*)0);
		return *cast(int*)&params[36];
	}
	static int Len(ScriptString S)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		StaticClass.ProcessEvent(Functions.Len, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	static ScriptString SubtractEqual_StrStr(ref ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_StrStr, params.ptr, cast(void*)0);
		A = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[24];
	}
	static ScriptString AtEqual_StrStr(ref ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.AtEqual_StrStr, params.ptr, cast(void*)0);
		A = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[24];
	}
	static bool ComplementEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.ComplementEqual_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool NotEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool EqualEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool GreaterEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.GreaterEqual_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool LessEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.LessEqual_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool Greater_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Greater_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool Less_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Less_StrStr, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static ScriptString At_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.At_StrStr, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	static ScriptString Concat_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Concat_StrStr, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	static Rotator MakeRotator(int Pitch, int Yaw, int Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Pitch;
		*cast(int*)&params[4] = Yaw;
		*cast(int*)&params[8] = Roll;
		StaticClass.ProcessEvent(Functions.MakeRotator, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	static bool SClampRotAxis(float DeltaTime, int ViewAxis, ref int out_DeltaViewAxis, int MaxLimit, int MinLimit, float InterpolationSpeed)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = ViewAxis;
		*cast(int*)&params[8] = out_DeltaViewAxis;
		*cast(int*)&params[12] = MaxLimit;
		*cast(int*)&params[16] = MinLimit;
		*cast(float*)&params[20] = InterpolationSpeed;
		StaticClass.ProcessEvent(Functions.SClampRotAxis, params.ptr, cast(void*)0);
		out_DeltaViewAxis = *cast(int*)&params[8];
		return *cast(bool*)&params[24];
	}
	static int ClampRotAxisFromRange(int Current, int Min, int Max)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Current;
		*cast(int*)&params[4] = Min;
		*cast(int*)&params[8] = Max;
		StaticClass.ProcessEvent(Functions.ClampRotAxisFromRange, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	static int NormalizeRotAxis(int Angle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Angle;
		StaticClass.ProcessEvent(Functions.NormalizeRotAxis, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static float FInterpTo(float Current, float Target, float DeltaTime, float InterpSpeed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(float*)&params[4] = Target;
		*cast(float*)&params[8] = DeltaTime;
		*cast(float*)&params[12] = InterpSpeed;
		StaticClass.ProcessEvent(Functions.FInterpTo, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	static int ClampRotAxisFromBase(int Current, int Center, int MaxDelta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Current;
		*cast(int*)&params[4] = Center;
		*cast(int*)&params[8] = MaxDelta;
		StaticClass.ProcessEvent(Functions.ClampRotAxisFromBase, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	static void ClampRotAxis(int ViewAxis, ref int out_DeltaViewAxis, int MaxLimit, int MinLimit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ViewAxis;
		*cast(int*)&params[4] = out_DeltaViewAxis;
		*cast(int*)&params[8] = MaxLimit;
		*cast(int*)&params[12] = MinLimit;
		StaticClass.ProcessEvent(Functions.ClampRotAxis, params.ptr, cast(void*)0);
		out_DeltaViewAxis = *cast(int*)&params[4];
	}
	static float RSize(Rotator R)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = R;
		StaticClass.ProcessEvent(Functions.RSize, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float RDiff(Rotator A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.RDiff, params.ptr, cast(void*)0);
		return *cast(float*)&params[24];
	}
	static Rotator RInterpTo(Rotator Current, Rotator Target, float DeltaTime, float InterpSpeed, bool* bConstantInterpSpeed = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Rotator*)params.ptr = Current;
		*cast(Rotator*)&params[12] = Target;
		*cast(float*)&params[24] = DeltaTime;
		*cast(float*)&params[28] = InterpSpeed;
		if (bConstantInterpSpeed !is null)
			*cast(bool*)&params[32] = *bConstantInterpSpeed;
		StaticClass.ProcessEvent(Functions.RInterpTo, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[36];
	}
	static Rotator RTransform(Rotator R, Rotator RBasis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = R;
		*cast(Rotator*)&params[12] = RBasis;
		StaticClass.ProcessEvent(Functions.RTransform, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[24];
	}
	static Rotator RSmerp(Rotator A, Rotator B, float Alpha, bool* bShortestPath = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		if (bShortestPath !is null)
			*cast(bool*)&params[28] = *bShortestPath;
		StaticClass.ProcessEvent(Functions.RSmerp, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[32];
	}
	static Rotator RLerp(Rotator A, Rotator B, float Alpha, bool* bShortestPath = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		if (bShortestPath !is null)
			*cast(bool*)&params[28] = *bShortestPath;
		StaticClass.ProcessEvent(Functions.RLerp, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[32];
	}
	static Rotator Normalize(Rotator Rot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = Rot;
		StaticClass.ProcessEvent(Functions.Normalize, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	static Rotator OrthoRotation(Vector X, Vector Y, Vector Z)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = X;
		*cast(Vector*)&params[12] = Y;
		*cast(Vector*)&params[24] = Z;
		StaticClass.ProcessEvent(Functions.OrthoRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[36];
	}
	static Rotator RotRand(bool* bRoll = null)
	{
		ubyte params[16];
		params[] = 0;
		if (bRoll !is null)
			*cast(bool*)params.ptr = *bRoll;
		StaticClass.ProcessEvent(Functions.RotRand, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	static Vector GetRotatorAxis(Rotator A, int Axis)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(int*)&params[12] = Axis;
		StaticClass.ProcessEvent(Functions.GetRotatorAxis, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	static void GetUnAxes(Rotator A, ref Vector X, ref Vector Y, ref Vector Z)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Vector*)&params[12] = X;
		*cast(Vector*)&params[24] = Y;
		*cast(Vector*)&params[36] = Z;
		StaticClass.ProcessEvent(Functions.GetUnAxes, params.ptr, cast(void*)0);
		X = *cast(Vector*)&params[12];
		Y = *cast(Vector*)&params[24];
		Z = *cast(Vector*)&params[36];
	}
	static void GetAxes(Rotator A, ref Vector X, ref Vector Y, ref Vector Z)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Vector*)&params[12] = X;
		*cast(Vector*)&params[24] = Y;
		*cast(Vector*)&params[36] = Z;
		StaticClass.ProcessEvent(Functions.GetAxes, params.ptr, cast(void*)0);
		X = *cast(Vector*)&params[12];
		Y = *cast(Vector*)&params[24];
		Z = *cast(Vector*)&params[36];
	}
	static bool ClockwiseFrom_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.ClockwiseFrom_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static Rotator SubtractEqual_RotatorRotator(ref Rotator A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_RotatorRotator, params.ptr, cast(void*)0);
		A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[24];
	}
	static Rotator AddEqual_RotatorRotator(ref Rotator A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.AddEqual_RotatorRotator, params.ptr, cast(void*)0);
		A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[24];
	}
	static Rotator Subtract_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Subtract_RotatorRotator, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[24];
	}
	static Rotator Add_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Add_RotatorRotator, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[24];
	}
	static Rotator DivideEqual_RotatorFloat(ref Rotator A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.DivideEqual_RotatorFloat, params.ptr, cast(void*)0);
		A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[16];
	}
	static Rotator MultiplyEqual_RotatorFloat(ref Rotator A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_RotatorFloat, params.ptr, cast(void*)0);
		A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[16];
	}
	static Rotator Divide_RotatorFloat(Rotator A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Divide_RotatorFloat, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	static Rotator Multiply_FloatRotator(float A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(Rotator*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Multiply_FloatRotator, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	static Rotator Multiply_RotatorFloat(Rotator A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Multiply_RotatorFloat, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	static bool NotEqual_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_RotatorRotator, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool EqualEqual_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_RotatorRotator, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool InCylinder(Vector Origin, Rotator Dir, float Width, Vector A, bool* bIgnoreZ = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(Rotator*)&params[12] = Dir;
		*cast(float*)&params[24] = Width;
		*cast(Vector*)&params[28] = A;
		if (bIgnoreZ !is null)
			*cast(bool*)&params[40] = *bIgnoreZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.InCylinder, params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	static float NoZDot(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.NoZDot, params.ptr, cast(void*)0);
		return *cast(float*)&params[24];
	}
	static Vector ClampLength(Vector V, float MaxLength)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = V;
		*cast(float*)&params[12] = MaxLength;
		StaticClass.ProcessEvent(Functions.ClampLength, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	static Vector VInterpTo(Vector Current, Vector Target, float DeltaTime, float InterpSpeed)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = Current;
		*cast(Vector*)&params[12] = Target;
		*cast(float*)&params[24] = DeltaTime;
		*cast(float*)&params[28] = InterpSpeed;
		StaticClass.ProcessEvent(Functions.VInterpTo, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[32];
	}
	static bool IsZero(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.IsZero, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	static Vector ProjectOnTo(Vector X, Vector Y)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = X;
		*cast(Vector*)&params[12] = Y;
		StaticClass.ProcessEvent(Functions.ProjectOnTo, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector MirrorVectorByNormal(Vector InVect, Vector InNormal)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = InVect;
		*cast(Vector*)&params[12] = InNormal;
		StaticClass.ProcessEvent(Functions.MirrorVectorByNormal, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector VRandCone2(Vector Dir, float HorizontalConeHalfAngleRadians, float VerticalConeHalfAngleRadians)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		*cast(float*)&params[12] = HorizontalConeHalfAngleRadians;
		*cast(float*)&params[16] = VerticalConeHalfAngleRadians;
		StaticClass.ProcessEvent(Functions.VRandCone2, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	static Vector VRandCone(Vector Dir, float ConeHalfAngleRadians)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		*cast(float*)&params[12] = ConeHalfAngleRadians;
		StaticClass.ProcessEvent(Functions.VRandCone, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	static Vector VRand()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.VRand, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	static Vector VSmerp(Vector A, Vector B, float Alpha)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		StaticClass.ProcessEvent(Functions.VSmerp, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	static Vector VLerp(Vector A, Vector B, float Alpha)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		StaticClass.ProcessEvent(Functions.VLerp, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	static Vector Normal(Vector A)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Normal, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	static float VSizeSq2D(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.VSizeSq2D, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float VSizeSq(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.VSizeSq, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float VSize2D(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.VSize2D, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float VSize(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.VSize, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static Vector SubtractEqual_VectorVector(ref Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_VectorVector, params.ptr, cast(void*)0);
		A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[24];
	}
	static Vector AddEqual_VectorVector(ref Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.AddEqual_VectorVector, params.ptr, cast(void*)0);
		A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[24];
	}
	static Vector DivideEqual_VectorFloat(ref Vector A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.DivideEqual_VectorFloat, params.ptr, cast(void*)0);
		A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[16];
	}
	static Vector MultiplyEqual_VectorVector(ref Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_VectorVector, params.ptr, cast(void*)0);
		A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[24];
	}
	static Vector MultiplyEqual_VectorFloat(ref Vector A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_VectorFloat, params.ptr, cast(void*)0);
		A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[16];
	}
	static Vector Cross_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Cross_VectorVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static float Dot_VectorVector(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Dot_VectorVector, params.ptr, cast(void*)0);
		return *cast(float*)&params[24];
	}
	static bool NotEqual_VectorVector(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_VectorVector, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool EqualEqual_VectorVector(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_VectorVector, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static Vector GreaterGreater_VectorRotator(Vector A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.GreaterGreater_VectorRotator, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector LessLess_VectorRotator(Vector A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.LessLess_VectorRotator, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector Subtract_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Subtract_VectorVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector Add_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Add_VectorVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector Divide_VectorFloat(Vector A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Divide_VectorFloat, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	static Vector Multiply_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Multiply_VectorVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	static Vector Multiply_FloatVector(float A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(Vector*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Multiply_FloatVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	static Vector Multiply_VectorFloat(Vector A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(float*)&params[12] = B;
		StaticClass.ProcessEvent(Functions.Multiply_VectorFloat, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	static Vector Subtract_PreVector(Vector A)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Subtract_PreVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	static float FInterpConstantTo(float Current, float Target, float DeltaTime, float InterpSpeed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(float*)&params[4] = Target;
		*cast(float*)&params[8] = DeltaTime;
		*cast(float*)&params[12] = InterpSpeed;
		StaticClass.ProcessEvent(Functions.FInterpConstantTo, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	static float FPctByRange(float Value, float InMin, float InMax)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Value;
		*cast(float*)&params[4] = InMin;
		*cast(float*)&params[8] = InMax;
		StaticClass.ProcessEvent(Functions.FPctByRange, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float RandRange(float InMin, float InMax)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InMin;
		*cast(float*)&params[4] = InMax;
		StaticClass.ProcessEvent(Functions.RandRange, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float FInterpEaseInOut(float A, float B, float Alpha, float Exp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		*cast(float*)&params[12] = Exp;
		StaticClass.ProcessEvent(Functions.FInterpEaseInOut, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	static float FInterpEaseOut(float A, float B, float Alpha, float Exp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		*cast(float*)&params[12] = Exp;
		StaticClass.ProcessEvent(Functions.FInterpEaseOut, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	static float FInterpEaseIn(float A, float B, float Alpha, float Exp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		*cast(float*)&params[12] = Exp;
		StaticClass.ProcessEvent(Functions.FInterpEaseIn, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	static float FCubicInterp(float P0, float T0, float P1, float T1, float A)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = P0;
		*cast(float*)&params[4] = T0;
		*cast(float*)&params[8] = P1;
		*cast(float*)&params[12] = T1;
		*cast(float*)&params[16] = A;
		StaticClass.ProcessEvent(Functions.FCubicInterp, params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	static int FCeil(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.FCeil, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static int FFloor(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.FFloor, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static int Round(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Round, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static float Lerp(float A, float B, float Alpha)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		StaticClass.ProcessEvent(Functions.Lerp, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float FClamp(float V, float A, float B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = V;
		*cast(float*)&params[4] = A;
		*cast(float*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.FClamp, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	static float FMax(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.FMax, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float FMin(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.FMin, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float FRand()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.FRand, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	static float Square(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Square, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Sqrt(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Sqrt, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Loge(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Loge, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Exp(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Exp, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Atan2(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Atan2, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float Atan(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Atan, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Tan(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Tan, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Cos(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Cos, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Asin(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Asin, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Sin(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Sin, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float Abs(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Abs, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static float SubtractEqual_FloatFloat(ref float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_FloatFloat, params.ptr, cast(void*)0);
		A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	static float AddEqual_FloatFloat(ref float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.AddEqual_FloatFloat, params.ptr, cast(void*)0);
		A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	static float DivideEqual_FloatFloat(ref float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.DivideEqual_FloatFloat, params.ptr, cast(void*)0);
		A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	static float MultiplyEqual_FloatFloat(ref float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_FloatFloat, params.ptr, cast(void*)0);
		A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	static bool NotEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool ComplementEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.ComplementEqual_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool EqualEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool GreaterEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.GreaterEqual_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool LessEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.LessEqual_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool Greater_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Greater_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool Less_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Less_FloatFloat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static float Subtract_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Subtract_FloatFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float Add_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Add_FloatFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float Percent_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Percent_FloatFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float Divide_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Divide_FloatFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float Multiply_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Multiply_FloatFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float MultiplyMultiply_FloatFloat(float Base, float Exp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Base;
		*cast(float*)&params[4] = Exp;
		StaticClass.ProcessEvent(Functions.MultiplyMultiply_FloatFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	static float Subtract_PreFloat(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Subtract_PreFloat, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	static ScriptString ToHex(int A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.ToHex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	static int Clamp(int V, int A, int B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = V;
		*cast(int*)&params[4] = A;
		*cast(int*)&params[8] = B;
		StaticClass.ProcessEvent(Functions.Clamp, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	static int Max(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Max, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Min(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Min, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Rand(int Max)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Max;
		StaticClass.ProcessEvent(Functions.Rand, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static int SubtractSubtract_Int(ref int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.SubtractSubtract_Int, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	static int AddAdd_Int(ref int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.AddAdd_Int, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	static int SubtractSubtract_PreInt(ref int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.SubtractSubtract_PreInt, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	static int AddAdd_PreInt(ref int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.AddAdd_PreInt, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	static int SubtractEqual_IntInt(ref int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_IntInt, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	static int AddEqual_IntInt(ref int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.AddEqual_IntInt, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	static int DivideEqual_IntFloat(ref int A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.DivideEqual_IntFloat, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	static int MultiplyEqual_IntFloat(ref int A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_IntFloat, params.ptr, cast(void*)0);
		A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	static int Or_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Or_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Xor_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Xor_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int And_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.And_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static bool NotEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool EqualEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool GreaterEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.GreaterEqual_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool LessEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.LessEqual_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool Greater_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Greater_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool Less_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Less_IntInt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static int GreaterGreaterGreater_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.GreaterGreaterGreater_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int GreaterGreater_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.GreaterGreater_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int LessLess_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.LessLess_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Subtract_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Subtract_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Add_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Add_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Percent_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Percent_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Divide_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Divide_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Multiply_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.Multiply_IntInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static int Subtract_PreInt(int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Subtract_PreInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static int Complement_PreInt(int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Complement_PreInt, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static ubyte SubtractSubtract_Byte(ref ubyte A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = A;
		StaticClass.ProcessEvent(Functions.SubtractSubtract_Byte, params.ptr, cast(void*)0);
		A = params[0];
		return params[1];
	}
	static ubyte AddAdd_Byte(ref ubyte A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = A;
		StaticClass.ProcessEvent(Functions.AddAdd_Byte, params.ptr, cast(void*)0);
		A = params[0];
		return params[1];
	}
	static ubyte SubtractSubtract_PreByte(ref ubyte A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = A;
		StaticClass.ProcessEvent(Functions.SubtractSubtract_PreByte, params.ptr, cast(void*)0);
		A = params[0];
		return params[1];
	}
	static ubyte AddAdd_PreByte(ref ubyte A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = A;
		StaticClass.ProcessEvent(Functions.AddAdd_PreByte, params.ptr, cast(void*)0);
		A = params[0];
		return params[1];
	}
	static ubyte SubtractEqual_ByteByte(ref ubyte A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = A;
		params[1] = B;
		StaticClass.ProcessEvent(Functions.SubtractEqual_ByteByte, params.ptr, cast(void*)0);
		A = params[0];
		return params[2];
	}
	static ubyte AddEqual_ByteByte(ref ubyte A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = A;
		params[1] = B;
		StaticClass.ProcessEvent(Functions.AddEqual_ByteByte, params.ptr, cast(void*)0);
		A = params[0];
		return params[2];
	}
	static ubyte DivideEqual_ByteByte(ref ubyte A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = A;
		params[1] = B;
		StaticClass.ProcessEvent(Functions.DivideEqual_ByteByte, params.ptr, cast(void*)0);
		A = params[0];
		return params[2];
	}
	static ubyte MultiplyEqual_ByteFloat(ref ubyte A, float B)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = A;
		*cast(float*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_ByteFloat, params.ptr, cast(void*)0);
		A = params[0];
		return params[8];
	}
	static ubyte MultiplyEqual_ByteByte(ref ubyte A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = A;
		params[1] = B;
		StaticClass.ProcessEvent(Functions.MultiplyEqual_ByteByte, params.ptr, cast(void*)0);
		A = params[0];
		return params[2];
	}
	static bool OrOr_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.OrOr_BoolBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool XorXor_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.XorXor_BoolBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool AndAnd_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.AndAnd_BoolBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool NotEqual_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.NotEqual_BoolBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool EqualEqual_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		StaticClass.ProcessEvent(Functions.EqualEqual_BoolBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool Not_PreBool(bool A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		StaticClass.ProcessEvent(Functions.Not_PreBool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}

module UnrealScript.Core.UObject;

import ScriptClasses;

extern(C++) interface UObject
{
	public static immutable auto InvAspectRatio16x9 = 0.56249;
	public static immutable auto InvAspectRatio5x4 = 0.8;
	public static immutable auto InvAspectRatio4x3 = 0.75;
	public static immutable auto AspectRatio16x9 = 1.77778;
	public static immutable auto AspectRatio5x4 = 1.25;
	public static immutable auto AspectRatio4x3 = 1.33333;
	public static immutable auto INDEX_NONE = -1;
	public static immutable auto UnrRotToDeg = 0.00549316540360483;
	public static immutable auto DegToUnrRot = 182.0444;
	public static immutable auto RadToUnrRot = 10430.3783504704527;
	public static immutable auto UnrRotToRad = 0.00009587379924285;
	public static immutable auto DegToRad = 0.017453292519943296;
	public static immutable auto RadToDeg = 57.295779513082321600;
	public static immutable auto Pi = 3.1415926535897932;
	public static immutable auto MaxInt = 0x7fffffff;
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
	struct Rotator
	{
		public @property final auto ref int Pitch() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Pitch[4];
		public @property final auto ref int Yaw() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Yaw[4];
		public @property final auto ref int Roll() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Roll[4];
	}
	struct Plane
	{
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref float Z() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Z[4];
		public @property final auto ref float W() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __W[4];
	}
	struct Vector
	{
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref float Z() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Z[4];
	}
	struct Guid
	{
		public @property final auto ref int A() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __A[4];
		public @property final auto ref int B() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __B[4];
		public @property final auto ref int C() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __C[4];
		public @property final auto ref int D() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __D[4];
	}
	struct Vector2D
	{
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
	}
	struct Vector4
	{
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref float Z() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Z[4];
		public @property final auto ref float W() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __W[4];
	}
	struct LinearColor
	{
		public @property final auto ref float R() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __R[4];
		public @property final auto ref float G() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __G[4];
		public @property final auto ref float B() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __B[4];
		public @property final auto ref float A() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __A[4];
	}
	struct Color
	{
		public @property final auto ref ubyte R() { return *cast(ubyte*)(cast(size_t)&this + 2); }
		private ubyte __R[1];
		public @property final auto ref ubyte G() { return *cast(ubyte*)(cast(size_t)&this + 1); }
		private ubyte __G[1];
		public @property final auto ref ubyte B() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		private ubyte __B[1];
		public @property final auto ref ubyte A() { return *cast(ubyte*)(cast(size_t)&this + 3); }
		private ubyte __A[1];
	}
	struct InterpCurveVector2D
	{
		public @property final auto ref ScriptArray!(UObject.InterpCurvePointVector2D) Points() { return *cast(ScriptArray!(UObject.InterpCurvePointVector2D)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
		public @property final auto ref UObject.EInterpMethodType InterpMethod() { return *cast(UObject.EInterpMethodType*)(cast(size_t)&this + 12); }
		private ubyte __InterpMethod[1];
	}
	struct InterpCurvePointVector2D
	{
		public @property final auto ref float InVal() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __InVal[4];
		public @property final auto ref UObject.Vector2D OutVal() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 4); }
		private ubyte __OutVal[8];
		public @property final auto ref UObject.Vector2D ArriveTangent() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 12); }
		private ubyte __ArriveTangent[8];
		public @property final auto ref UObject.Vector2D LeaveTangent() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 20); }
		private ubyte __LeaveTangent[8];
		public @property final auto ref UObject.EInterpCurveMode InterpMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 28); }
		private ubyte __InterpMode[1];
	}
	struct InterpCurveFloat
	{
		public @property final auto ref ScriptArray!(UObject.InterpCurvePointFloat) Points() { return *cast(ScriptArray!(UObject.InterpCurvePointFloat)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
		public @property final auto ref UObject.EInterpMethodType InterpMethod() { return *cast(UObject.EInterpMethodType*)(cast(size_t)&this + 12); }
		private ubyte __InterpMethod[1];
	}
	struct Cylinder
	{
		public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Radius[4];
		public @property final auto ref float Height() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Height[4];
	}
	struct InterpCurveVector
	{
		public @property final auto ref ScriptArray!(UObject.InterpCurvePointVector) Points() { return *cast(ScriptArray!(UObject.InterpCurvePointVector)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
		public @property final auto ref UObject.EInterpMethodType InterpMethod() { return *cast(UObject.EInterpMethodType*)(cast(size_t)&this + 12); }
		private ubyte __InterpMethod[1];
	}
	struct InterpCurvePointVector
	{
		public @property final auto ref float InVal() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __InVal[4];
		public @property final auto ref Vector OutVal() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __OutVal[12];
		public @property final auto ref Vector ArriveTangent() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __ArriveTangent[12];
		public @property final auto ref Vector LeaveTangent() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __LeaveTangent[12];
		public @property final auto ref UObject.EInterpCurveMode InterpMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 40); }
		private ubyte __InterpMode[1];
	}
	struct InterpCurvePointFloat
	{
		public @property final auto ref float InVal() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __InVal[4];
		public @property final auto ref float OutVal() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __OutVal[4];
		public @property final auto ref float ArriveTangent() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ArriveTangent[4];
		public @property final auto ref float LeaveTangent() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __LeaveTangent[4];
		public @property final auto ref UObject.EInterpCurveMode InterpMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 16); }
		private ubyte __InterpMode[1];
	}
	struct Quat
	{
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref float Z() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Z[4];
		public @property final auto ref float W() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __W[4];
	}
	struct Matrix
	{
		public @property final auto ref UObject.Plane XPlane() { return *cast(UObject.Plane*)(cast(size_t)&this + 0); }
		private ubyte __XPlane[16];
		public @property final auto ref UObject.Plane YPlane() { return *cast(UObject.Plane*)(cast(size_t)&this + 16); }
		private ubyte __YPlane[16];
		public @property final auto ref UObject.Plane ZPlane() { return *cast(UObject.Plane*)(cast(size_t)&this + 32); }
		private ubyte __ZPlane[16];
		public @property final auto ref UObject.Plane WPlane() { return *cast(UObject.Plane*)(cast(size_t)&this + 48); }
		private ubyte __WPlane[16];
	}
	struct BoxSphereBounds
	{
		public @property final auto ref Vector Origin() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Origin[12];
		public @property final auto ref Vector BoxExtent() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __BoxExtent[12];
		public @property final auto ref float SphereRadius() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __SphereRadius[4];
	}
	struct TwoVectors
	{
		public @property final auto ref Vector v1() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __v1[12];
		public @property final auto ref Vector v2() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __v2[12];
	}
	struct TAlphaBlend
	{
		public @property final auto ref float AlphaIn() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __AlphaIn[4];
		public @property final auto ref float AlphaOut() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __AlphaOut[4];
		public @property final auto ref float AlphaTarget() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __AlphaTarget[4];
		public @property final auto ref float BlendTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __BlendTime[4];
		public @property final auto ref float BlendTimeToGo() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __BlendTimeToGo[4];
		public @property final auto ref UObject.AlphaBlendType BlendType() { return *cast(UObject.AlphaBlendType*)(cast(size_t)&this + 20); }
		private ubyte __BlendType[1];
	}
	struct BoneAtom
	{
		public @property final auto ref UObject.Quat Rotation() { return *cast(UObject.Quat*)(cast(size_t)&this + 0); }
		private ubyte __Rotation[16];
		public @property final auto ref Vector Translation() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Translation[12];
		public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __Scale[4];
	}
	struct OctreeElementId
	{
		public @property final auto ref UObject.Pointer Node() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Node[4];
		public @property final auto ref int ElementIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ElementIndex[4];
	}
	struct RenderCommandFence
	{
		public @property final auto ref int NumPendingFences() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __NumPendingFences[4];
	}
	struct Pointer
	{
		public @property final auto ref int Dummy() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Dummy[4];
	}
	struct RawDistribution
	{
		public @property final auto ref ubyte Type() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		private ubyte __Type[1];
		public @property final auto ref ubyte Op() { return *cast(ubyte*)(cast(size_t)&this + 1); }
		private ubyte __Op[1];
		public @property final auto ref ubyte LookupTableNumElements() { return *cast(ubyte*)(cast(size_t)&this + 2); }
		private ubyte __LookupTableNumElements[1];
		public @property final auto ref ubyte LookupTableChunkSize() { return *cast(ubyte*)(cast(size_t)&this + 3); }
		private ubyte __LookupTableChunkSize[1];
		public @property final auto ref ScriptArray!(float) LookupTable() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 4); }
		private ubyte __LookupTable[12];
		public @property final auto ref float LookupTableTimeScale() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __LookupTableTimeScale[4];
		public @property final auto ref float LookupTableStartTime() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __LookupTableStartTime[4];
	}
	struct InterpCurveLinearColor
	{
		public @property final auto ref ScriptArray!(UObject.InterpCurvePointLinearColor) Points() { return *cast(ScriptArray!(UObject.InterpCurvePointLinearColor)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
		public @property final auto ref UObject.EInterpMethodType InterpMethod() { return *cast(UObject.EInterpMethodType*)(cast(size_t)&this + 12); }
		private ubyte __InterpMethod[1];
	}
	struct InterpCurvePointLinearColor
	{
		public @property final auto ref float InVal() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __InVal[4];
		public @property final auto ref UObject.LinearColor OutVal() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 4); }
		private ubyte __OutVal[16];
		public @property final auto ref UObject.LinearColor ArriveTangent() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 20); }
		private ubyte __ArriveTangent[16];
		public @property final auto ref UObject.LinearColor LeaveTangent() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 36); }
		private ubyte __LeaveTangent[16];
		public @property final auto ref UObject.EInterpCurveMode InterpMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 52); }
		private ubyte __InterpMode[1];
	}
	struct InterpCurveQuat
	{
		public @property final auto ref ScriptArray!(UObject.InterpCurvePointQuat) Points() { return *cast(ScriptArray!(UObject.InterpCurvePointQuat)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
		public @property final auto ref UObject.EInterpMethodType InterpMethod() { return *cast(UObject.EInterpMethodType*)(cast(size_t)&this + 12); }
		private ubyte __InterpMethod[1];
	}
	struct InterpCurvePointQuat
	{
		public @property final auto ref float InVal() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __InVal[4];
		public @property final auto ref UObject.Quat OutVal() { return *cast(UObject.Quat*)(cast(size_t)&this + 16); }
		private ubyte __OutVal[16];
		public @property final auto ref UObject.Quat ArriveTangent() { return *cast(UObject.Quat*)(cast(size_t)&this + 32); }
		private ubyte __ArriveTangent[16];
		public @property final auto ref UObject.Quat LeaveTangent() { return *cast(UObject.Quat*)(cast(size_t)&this + 48); }
		private ubyte __LeaveTangent[16];
		public @property final auto ref UObject.EInterpCurveMode InterpMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 64); }
		private ubyte __InterpMode[1];
	}
	struct InterpCurveTwoVectors
	{
		public @property final auto ref ScriptArray!(UObject.InterpCurvePointTwoVectors) Points() { return *cast(ScriptArray!(UObject.InterpCurvePointTwoVectors)*)(cast(size_t)&this + 0); }
		private ubyte __Points[12];
		public @property final auto ref UObject.EInterpMethodType InterpMethod() { return *cast(UObject.EInterpMethodType*)(cast(size_t)&this + 12); }
		private ubyte __InterpMethod[1];
	}
	struct InterpCurvePointTwoVectors
	{
		public @property final auto ref float InVal() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __InVal[4];
		public @property final auto ref UObject.TwoVectors OutVal() { return *cast(UObject.TwoVectors*)(cast(size_t)&this + 4); }
		private ubyte __OutVal[24];
		public @property final auto ref UObject.TwoVectors ArriveTangent() { return *cast(UObject.TwoVectors*)(cast(size_t)&this + 28); }
		private ubyte __ArriveTangent[24];
		public @property final auto ref UObject.TwoVectors LeaveTangent() { return *cast(UObject.TwoVectors*)(cast(size_t)&this + 52); }
		private ubyte __LeaveTangent[24];
		public @property final auto ref UObject.EInterpCurveMode InterpMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 76); }
		private ubyte __InterpMode[1];
	}
	struct Box
	{
		public @property final auto ref Vector Min() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Min[12];
		public @property final auto ref Vector Max() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __Max[12];
		public @property final auto ref ubyte IsValid() { return *cast(ubyte*)(cast(size_t)&this + 24); }
		private ubyte __IsValid[1];
	}
	struct TPOV
	{
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Location[12];
		public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
		private ubyte __Rotation[12];
		public @property final auto ref float FOV() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __FOV[4];
	}
	struct SHVectorRGB
	{
		public @property final auto ref UObject.SHVector R() { return *cast(UObject.SHVector*)(cast(size_t)&this + 0); }
		private ubyte __R[48];
		public @property final auto ref UObject.SHVector G() { return *cast(UObject.SHVector*)(cast(size_t)&this + 48); }
		private ubyte __G[48];
		public @property final auto ref UObject.SHVector B() { return *cast(UObject.SHVector*)(cast(size_t)&this + 96); }
		private ubyte __B[48];
	}
	struct SHVector
	{
		public @property final auto ref float V() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __V[4];
		public @property final auto ref float Padding() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __Padding[4];
	}
	struct IntPoint
	{
		public @property final auto ref int X() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
		public @property final auto ref int Y() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
	}
	struct InlinePointerArray_Mirror
	{
		public @property final auto ref UObject.Pointer InlineData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __InlineData[4];
		public @property final auto ref UObject.Array_Mirror SecondaryData() { return *cast(UObject.Array_Mirror*)(cast(size_t)&this + 4); }
		private ubyte __SecondaryData[12];
	}
	struct Array_Mirror
	{
		public @property final auto ref UObject.Pointer Data() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Data[4];
		public @property final auto ref int ArrayNum() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ArrayNum[4];
		public @property final auto ref int ArrayMax() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ArrayMax[4];
	}
	struct IndirectArray_Mirror
	{
		public @property final auto ref UObject.Pointer Data() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Data[4];
		public @property final auto ref int ArrayNum() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ArrayNum[4];
		public @property final auto ref int ArrayMax() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ArrayMax[4];
	}
	struct FColorVertexBuffer_Mirror
	{
		public @property final auto ref UObject.Pointer VfTable() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __VfTable[4];
		public @property final auto ref UObject.Pointer VertexData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		private ubyte __VertexData[4];
		public @property final auto ref int Data() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Data[4];
		public @property final auto ref int Stride() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Stride[4];
		public @property final auto ref int NumVertices() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __NumVertices[4];
	}
	struct RenderCommandFence_Mirror
	{
		public @property final auto ref int NumPendingFences() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __NumPendingFences[4];
	}
	struct UntypedBulkData_Mirror
	{
		public @property final auto ref UObject.Pointer VfTable() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __VfTable[4];
		public @property final auto ref int BulkDataFlags() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __BulkDataFlags[4];
		public @property final auto ref int ElementCount() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ElementCount[4];
		public @property final auto ref int BulkDataOffsetInFile() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __BulkDataOffsetInFile[4];
		public @property final auto ref int BulkDataSizeOnDisk() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __BulkDataSizeOnDisk[4];
		public @property final auto ref int SavedBulkDataFlags() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __SavedBulkDataFlags[4];
		public @property final auto ref int SavedElementCount() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __SavedElementCount[4];
		public @property final auto ref int SavedBulkDataOffsetInFile() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __SavedBulkDataOffsetInFile[4];
		public @property final auto ref int SavedBulkDataSizeOnDisk() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __SavedBulkDataSizeOnDisk[4];
		public @property final auto ref UObject.Pointer BulkData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 36); }
		private ubyte __BulkData[4];
		public @property final auto ref int LockStatus() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __LockStatus[4];
		public @property final auto ref UObject.Pointer AttachedAr() { return *cast(UObject.Pointer*)(cast(size_t)&this + 44); }
		private ubyte __AttachedAr[4];
		public @property final auto ref int bShouldFreeOnEmpty() { return *cast(int*)(cast(size_t)&this + 48); }
		private ubyte __bShouldFreeOnEmpty[4];
	}
	struct MultiMap_Mirror
	{
		public @property final auto ref UObject.Set_Mirror Pairs() { return *cast(UObject.Set_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __Pairs[60];
	}
	struct Map_Mirror
	{
		public @property final auto ref UObject.Set_Mirror Pairs() { return *cast(UObject.Set_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __Pairs[60];
	}
	struct Set_Mirror
	{
		public @property final auto ref UObject.SparseArray_Mirror Elements() { return *cast(UObject.SparseArray_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __Elements[48];
		public @property final auto ref UObject.Pointer Hash() { return *cast(UObject.Pointer*)(cast(size_t)&this + 48); }
		private ubyte __Hash[4];
		public @property final auto ref int InlineHash() { return *cast(int*)(cast(size_t)&this + 52); }
		private ubyte __InlineHash[4];
		public @property final auto ref int HashSize() { return *cast(int*)(cast(size_t)&this + 56); }
		private ubyte __HashSize[4];
	}
	struct SparseArray_Mirror
	{
		public @property final auto ref ScriptArray!(int) Elements() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
		private ubyte __Elements[12];
		public @property final auto ref UObject.BitArray_Mirror AllocationFlags() { return *cast(UObject.BitArray_Mirror*)(cast(size_t)&this + 12); }
		private ubyte __AllocationFlags[28];
		public @property final auto ref int FirstFreeIndex() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __FirstFreeIndex[4];
		public @property final auto ref int NumFreeIndices() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __NumFreeIndices[4];
	}
	struct BitArray_Mirror
	{
		public @property final auto ref UObject.Pointer IndirectData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __IndirectData[4];
		public @property final auto ref int InlineData() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __InlineData[4];
		public @property final auto ref int NumBits() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __NumBits[4];
		public @property final auto ref int MaxBits() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __MaxBits[4];
	}
	struct ThreadSafeCounter
	{
		public @property final auto ref int Value() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Value[4];
	}
	struct Double
	{
		public @property final auto ref int A() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __A[4];
		public @property final auto ref int B() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __B[4];
	}
	struct QWord
	{
		public @property final auto ref int A() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __A[4];
		public @property final auto ref int B() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __B[4];
	}
	public @property final auto ref UObject Outer() { return *cast(UObject*)(cast(size_t)cast(void*)this + 40); }
	public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 44); }
	public @property final auto ref UObject.Pointer VfTableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 0); }
	public @property final auto ref int ObjectInternalInteger() { return *cast(int*)(cast(size_t)cast(void*)this + 4); }
	public @property final auto ref QWord ObjectFlags() { return *cast(QWord*)(cast(size_t)cast(void*)this + 8); }
	public @property final auto ref UObject.Pointer HashNext() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 16); }
	public @property final auto ref UObject.Pointer HashOuterNext() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 20); }
	public @property final auto ref UObject.Pointer StateFrame() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 24); }
	// WARNING: Property 'Linker' has the same name as a defined type!
	public @property final auto ref UObject.Pointer LinkerIndex() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 32); }
	public @property final auto ref int NetIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 36); }
	// WARNING: Property 'Class' has the same name as a defined type!
	public @property final auto ref UObject ObjectArchetype() { return *cast(UObject*)(cast(size_t)cast(void*)this + 56); }
	final int GetBuildChangelistNumber()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[1987], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetEngineVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[1988], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void GetSystemTime(int* Year, int* Month, int* DayOfWeek, int* Day, int* Hour, int* Min, int* Sec, int* MSec)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = *Year;
		*cast(int*)&params[4] = *Month;
		*cast(int*)&params[8] = *DayOfWeek;
		*cast(int*)&params[12] = *Day;
		*cast(int*)&params[16] = *Hour;
		*cast(int*)&params[20] = *Min;
		*cast(int*)&params[24] = *Sec;
		*cast(int*)&params[28] = *MSec;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[1990], params.ptr, cast(void*)0);
		*Year = *cast(int*)params.ptr;
		*Month = *cast(int*)&params[4];
		*DayOfWeek = *cast(int*)&params[8];
		*Day = *cast(int*)&params[12];
		*Hour = *cast(int*)&params[16];
		*Min = *cast(int*)&params[20];
		*Sec = *cast(int*)&params[24];
		*MSec = *cast(int*)&params[28];
	}
	final ScriptString TimeStamp()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[1992], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final Vector TransformVectorByRotation(Rotator SourceRotation, Vector SourceVector, bool bInverse)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Rotator*)params.ptr = SourceRotation;
		*cast(Vector*)&params[12] = SourceVector;
		*cast(bool*)&params[24] = bInverse;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2001], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	final ScriptName GetPackageName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2003], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final bool IsPendingKill()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2018], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float ByteToFloat(ubyte inputByte, bool bSigned)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = inputByte;
		*cast(bool*)&params[4] = bSigned;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2023], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final ubyte FloatToByte(float inputFloat, bool bSigned)
	{
		ubyte params[9];
		params[] = 0;
		*cast(float*)params.ptr = inputFloat;
		*cast(bool*)&params[4] = bSigned;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2025], params.ptr, cast(void*)0);
		return params[8];
	}
	final float UnwindHeading(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2029], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float FindDeltaAngle(float A1, float A2)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A1;
		*cast(float*)&params[4] = A2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2033], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float GetHeadingAngle(Vector Dir)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2036], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final void GetAngularDegreesFromRadians(UObject.Vector2D* OutFOV)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *OutFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2041], params.ptr, cast(void*)0);
		*OutFOV = *cast(UObject.Vector2D*)params.ptr;
	}
	final float Acos(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2044], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void GetAngularFromDotDist(UObject.Vector2D* OutAngDist, UObject.Vector2D DotDist)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *OutAngDist;
		*cast(UObject.Vector2D*)&params[8] = DotDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2046], params.ptr, cast(void*)0);
		*OutAngDist = *cast(UObject.Vector2D*)params.ptr;
	}
	final bool GetAngularDistance(UObject.Vector2D* OutAngularDist, Vector Direction, Vector AxisX, Vector AxisY, Vector AxisZ)
	{
		ubyte params[60];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *OutAngularDist;
		*cast(Vector*)&params[8] = Direction;
		*cast(Vector*)&params[20] = AxisX;
		*cast(Vector*)&params[32] = AxisY;
		*cast(Vector*)&params[44] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2052], params.ptr, cast(void*)0);
		*OutAngularDist = *cast(UObject.Vector2D*)params.ptr;
		return *cast(bool*)&params[56];
	}
	final bool GetDotDistance(UObject.Vector2D* OutDotDist, Vector Direction, Vector AxisX, Vector AxisY, Vector AxisZ)
	{
		ubyte params[60];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *OutDotDist;
		*cast(Vector*)&params[8] = Direction;
		*cast(Vector*)&params[20] = AxisX;
		*cast(Vector*)&params[32] = AxisY;
		*cast(Vector*)&params[44] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2055], params.ptr, cast(void*)0);
		*OutDotDist = *cast(UObject.Vector2D*)params.ptr;
		return *cast(bool*)&params[56];
	}
	final Vector PointProjectToPlane(Vector Point, Vector A, Vector B, Vector C)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = A;
		*cast(Vector*)&params[24] = B;
		*cast(Vector*)&params[36] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2062], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[48];
	}
	final float PointDistToPlane(Vector Point, Rotator Orientation, Vector Origin, Vector* out_ClosestPoint)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Rotator*)&params[12] = Orientation;
		*cast(Vector*)&params[24] = Origin;
		*cast(Vector*)&params[36] = *out_ClosestPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2069], params.ptr, cast(void*)0);
		*out_ClosestPoint = *cast(Vector*)&params[36];
		return *cast(float*)&params[48];
	}
	final float PointDistToSegment(Vector Point, Vector StartPoint, Vector EndPoint, Vector* OutClosestPoint)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = StartPoint;
		*cast(Vector*)&params[24] = EndPoint;
		*cast(Vector*)&params[36] = *OutClosestPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2075], params.ptr, cast(void*)0);
		*OutClosestPoint = *cast(Vector*)&params[36];
		return *cast(float*)&params[48];
	}
	final float PointDistToLine(Vector Point, Vector Line, Vector Origin, Vector* OutClosestPoint)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Vector*)&params[12] = Line;
		*cast(Vector*)&params[24] = Origin;
		*cast(Vector*)&params[36] = *OutClosestPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2088], params.ptr, cast(void*)0);
		*OutClosestPoint = *cast(Vector*)&params[36];
		return *cast(float*)&params[48];
	}
	final bool GetPerObjectConfigSections(ScriptClass SearchClass, ScriptArray!(ScriptString)* out_SectionNames, UObject ObjectOuter, int MaxResults)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SearchClass;
		*cast(ScriptArray!(ScriptString)*)&params[4] = *out_SectionNames;
		*cast(UObject*)&params[16] = ObjectOuter;
		*cast(int*)&params[20] = MaxResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2094], params.ptr, cast(void*)0);
		*out_SectionNames = *cast(ScriptArray!(ScriptString)*)&params[4];
		return *cast(bool*)&params[24];
	}
	final void StaticSaveConfig()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2100], cast(void*)0, cast(void*)0);
	}
	final void SaveConfig()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2107], cast(void*)0, cast(void*)0);
	}
	final UObject FindObject(ScriptString ObjectName, ScriptClass ObjectClass)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectName;
		*cast(ScriptClass*)&params[12] = ObjectClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2108], params.ptr, cast(void*)0);
		return *cast(UObject*)&params[16];
	}
	final UObject DynamicLoadObject(ScriptString ObjectName, ScriptClass ObjectClass, bool MayFail)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ObjectName;
		*cast(ScriptClass*)&params[12] = ObjectClass;
		*cast(bool*)&params[16] = MayFail;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2109], params.ptr, cast(void*)0);
		return *cast(UObject*)&params[20];
	}
	final ScriptName GetEnum(UObject E, int I)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject*)params.ptr = E;
		*cast(int*)&params[4] = I;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2113], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final void Disable(ScriptName ProbeFunc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProbeFunc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2118], params.ptr, cast(void*)0);
	}
	final void Enable(ScriptName ProbeFunc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProbeFunc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2122], params.ptr, cast(void*)0);
	}
	final void ContinuedState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2124], cast(void*)0, cast(void*)0);
	}
	final void PausedState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2126], cast(void*)0, cast(void*)0);
	}
	final void PoppedState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2127], cast(void*)0, cast(void*)0);
	}
	final void PushedState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2128], cast(void*)0, cast(void*)0);
	}
	final void EndState(ScriptName NextStateName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NextStateName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2129], params.ptr, cast(void*)0);
	}
	final void BeginState(ScriptName PreviousStateName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PreviousStateName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2130], params.ptr, cast(void*)0);
	}
	final void DumpStateStack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2132], cast(void*)0, cast(void*)0);
	}
	final void PopState(bool bPopAll)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPopAll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2134], params.ptr, cast(void*)0);
	}
	final void PushState(ScriptName NewState, ScriptName NewLabel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		*cast(ScriptName*)&params[8] = NewLabel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2135], params.ptr, cast(void*)0);
	}
	final ScriptName GetStateName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2137], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final bool IsChildState(ScriptName TestState, ScriptName TestParentState)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TestState;
		*cast(ScriptName*)&params[8] = TestParentState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2140], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool IsInState(ScriptName TestState, bool bTestStateStack)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TestState;
		*cast(bool*)&params[8] = bTestStateStack;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2142], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void GotoState(ScriptName NewState, ScriptName Label, bool bForceEvents, bool bKeepStack)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		*cast(ScriptName*)&params[8] = Label;
		*cast(bool*)&params[16] = bForceEvents;
		*cast(bool*)&params[20] = bKeepStack;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2146], params.ptr, cast(void*)0);
	}
	final bool IsUTracing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2150], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetUTracing(bool bShouldUTrace)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldUTrace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2155], params.ptr, cast(void*)0);
	}
	final ScriptName GetFuncName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2157], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void DebugBreak(int UserFlags, UObject.EDebugBreakType DebuggerType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = UserFlags;
		*cast(UObject.EDebugBreakType*)&params[4] = DebuggerType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2159], params.ptr, cast(void*)0);
	}
	final ScriptString GetScriptTrace()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2161], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ScriptTrace()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2166], cast(void*)0, cast(void*)0);
	}
	final ScriptString ParseLocalizedPropertyPath(ScriptString PathName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PathName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2168], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString Localize(ScriptString SectionName, ScriptString KeyName, ScriptString PackageName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SectionName;
		*cast(ScriptString*)&params[12] = KeyName;
		*cast(ScriptString*)&params[24] = PackageName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2169], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[36];
	}
	final void ParseStringIntoArray(ScriptString BaseString, ScriptArray!(ScriptString)* Pieces, ScriptString delim, bool bCullEmpty)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = BaseString;
		*cast(ScriptArray!(ScriptString)*)&params[12] = *Pieces;
		*cast(ScriptString*)&params[24] = delim;
		*cast(bool*)&params[36] = bCullEmpty;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2171], params.ptr, cast(void*)0);
		*Pieces = *cast(ScriptArray!(ScriptString)*)&params[12];
	}
	final void WarnInternal(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2175], params.ptr, cast(void*)0);
	}
	final void LogInternal(ScriptString S, ScriptName Tag)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptName*)&params[12] = Tag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2180], params.ptr, cast(void*)0);
	}
	final UObject.LinearColor Subtract_LinearColorLinearColor(UObject.LinearColor A, UObject.LinearColor B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = A;
		*cast(UObject.LinearColor*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2182], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[32];
	}
	final UObject.LinearColor Multiply_LinearColorFloat(UObject.LinearColor LC, float Mult)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = LC;
		*cast(float*)&params[16] = Mult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2185], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[20];
	}
	final UObject.LinearColor ColorToLinearColor(UObject.Color OldColor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = OldColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2195], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[4];
	}
	final UObject.LinearColor MakeLinearColor(float R, float G, float B, float A)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = R;
		*cast(float*)&params[4] = G;
		*cast(float*)&params[8] = B;
		*cast(float*)&params[12] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2199], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[16];
	}
	final UObject.Color LerpColor(UObject.Color A, UObject.Color B, float Alpha)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2207], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[12];
	}
	final UObject.Color MakeColor(ubyte R, ubyte G, ubyte B, ubyte A)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = R;
		params[1] = G;
		params[2] = B;
		params[3] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2214], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
	}
	final UObject.Color Add_ColorColor(UObject.Color A, UObject.Color B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2226], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	final UObject.Color Multiply_ColorFloat(UObject.Color A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2233], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	final UObject.Color Multiply_FloatColor(float A, UObject.Color B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2237], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	final UObject.Color Subtract_ColorColor(UObject.Color A, UObject.Color B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject.Color*)params.ptr = A;
		*cast(UObject.Color*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2241], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[8];
	}
	final UObject.Vector2D EvalInterpCurveVector2D(UObject.InterpCurveVector2D Vector2DCurve, float InVal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.InterpCurveVector2D*)params.ptr = Vector2DCurve;
		*cast(float*)&params[16] = InVal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2245], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[20];
	}
	final Vector EvalInterpCurveVector(UObject.InterpCurveVector VectorCurve, float InVal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.InterpCurveVector*)params.ptr = VectorCurve;
		*cast(float*)&params[16] = InVal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2249], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	final float EvalInterpCurveFloat(UObject.InterpCurveFloat FloatCurve, float InVal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.InterpCurveFloat*)params.ptr = FloatCurve;
		*cast(float*)&params[16] = InVal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2267], params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	final UObject.Vector2D vect2d(float InX, float InY)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InX;
		*cast(float*)&params[4] = InY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2281], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[8];
	}
	final float GetMappedRangeValue(UObject.Vector2D InputRange, UObject.Vector2D OutputRange, float Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = InputRange;
		*cast(UObject.Vector2D*)&params[8] = OutputRange;
		*cast(float*)&params[16] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2294], params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	final float GetRangePctByValue(UObject.Vector2D Range, float Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = Range;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2299], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float GetRangeValueByPct(UObject.Vector2D Range, float Pct)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = Range;
		*cast(float*)&params[8] = Pct;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2304], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final UObject.Vector2D SubtractEqual_Vector2DVector2D(UObject.Vector2D* A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *A;
		*cast(UObject.Vector2D*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2308], params.ptr, cast(void*)0);
		*A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[16];
	}
	final UObject.Vector2D AddEqual_Vector2DVector2D(UObject.Vector2D* A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *A;
		*cast(UObject.Vector2D*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2312], params.ptr, cast(void*)0);
		*A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[16];
	}
	final UObject.Vector2D DivideEqual_Vector2DFloat(UObject.Vector2D* A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *A;
		*cast(float*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2316], params.ptr, cast(void*)0);
		*A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[12];
	}
	final UObject.Vector2D MultiplyEqual_Vector2DFloat(UObject.Vector2D* A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *A;
		*cast(float*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2320], params.ptr, cast(void*)0);
		*A = *cast(UObject.Vector2D*)params.ptr;
		return *cast(UObject.Vector2D*)&params[12];
	}
	final UObject.Vector2D Divide_Vector2DFloat(UObject.Vector2D A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(float*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2324], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[12];
	}
	final UObject.Vector2D Multiply_Vector2DFloat(UObject.Vector2D A, float B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(float*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2328], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[12];
	}
	final UObject.Vector2D Subtract_Vector2DVector2D(UObject.Vector2D A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(UObject.Vector2D*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2332], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[16];
	}
	final UObject.Vector2D Add_Vector2DVector2D(UObject.Vector2D A, UObject.Vector2D B)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = A;
		*cast(UObject.Vector2D*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2336], params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)&params[16];
	}
	final UObject.Quat Subtract_QuatQuat(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2340], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	final UObject.Quat Add_QuatQuat(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2344], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	final UObject.Quat QuatSlerp(UObject.Quat A, UObject.Quat B, float Alpha, bool bShortestPath)
	{
		ubyte params[56];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		*cast(float*)&params[32] = Alpha;
		*cast(bool*)&params[36] = bShortestPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2353], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[48];
	}
	final Rotator QuatToRotator(UObject.Quat A)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2357], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final UObject.Quat QuatFromRotator(Rotator A)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2363], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	final UObject.Quat QuatFromAxisAndAngle(Vector Axis, float Angle)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Axis;
		*cast(float*)&params[12] = Angle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2366], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	final UObject.Quat QuatFindBetween(Vector A, Vector B)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2369], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	final Vector QuatRotateVector(UObject.Quat A, Vector B)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(Vector*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2373], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	final UObject.Quat QuatInvert(UObject.Quat A)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2377], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	final float QuatDot(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2381], params.ptr, cast(void*)0);
		return *cast(float*)&params[32];
	}
	final UObject.Quat QuatProduct(UObject.Quat A, UObject.Quat B)
	{
		ubyte params[48];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = A;
		*cast(UObject.Quat*)&params[16] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2384], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[32];
	}
	final Vector MatrixGetAxis(UObject.Matrix TM, UObject.EAxis Axis)
	{
		ubyte params[77];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(UObject.EAxis*)&params[64] = Axis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2388], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[68];
	}
	final Vector MatrixGetOrigin(UObject.Matrix TM)
	{
		ubyte params[76];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2392], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[64];
	}
	final Rotator MatrixGetRotator(UObject.Matrix TM)
	{
		ubyte params[76];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2406], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[64];
	}
	final UObject.Matrix MakeRotationMatrix(Rotator Rotation)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Rotator*)params.ptr = Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2409], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	final UObject.Matrix MakeRotationTranslationMatrix(Vector Translation, Rotator Rotation)
	{
		ubyte params[88];
		params[] = 0;
		*cast(Vector*)params.ptr = Translation;
		*cast(Rotator*)&params[12] = Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2412], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[32];
	}
	final Vector InverseTransformNormal(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2415], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	final Vector TransformNormal(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2419], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	final Vector InverseTransformVector(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2423], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	final Vector TransformVector(UObject.Matrix TM, Vector A)
	{
		ubyte params[88];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = TM;
		*cast(Vector*)&params[64] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2427], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[76];
	}
	final UObject.Matrix Multiply_MatrixMatrix(UObject.Matrix A, UObject.Matrix B)
	{
		ubyte params[192];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = A;
		*cast(UObject.Matrix*)&params[64] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2431], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[128];
	}
	final bool NotEqual_NameName(ScriptName A, ScriptName B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = A;
		*cast(ScriptName*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2435], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool EqualEqual_NameName(ScriptName A, ScriptName B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = A;
		*cast(ScriptName*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2439], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool IsA(ScriptName ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2443], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ClassIsChildOf(ScriptClass TestClass, ScriptClass ParentClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TestClass;
		*cast(ScriptClass*)&params[4] = ParentClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2447], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool NotEqual_InterfaceInterface(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* A, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = A;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2450], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool EqualEqual_InterfaceInterface(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* A, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = A;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2454], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool NotEqual_ObjectObject(UObject A, UObject B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject*)params.ptr = A;
		*cast(UObject*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2458], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool EqualEqual_ObjectObject(UObject A, UObject B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UObject*)params.ptr = A;
		*cast(UObject*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2462], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final ScriptString PathName(UObject CheckObject)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject*)params.ptr = CheckObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2466], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptArray!(ScriptString) SplitString(ScriptString Source, ScriptString Delimiter, bool bCullEmpty)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Source;
		*cast(ScriptString*)&params[12] = Delimiter;
		*cast(bool*)&params[24] = bCullEmpty;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2470], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ScriptString)*)&params[28];
	}
	final void JoinArray(ScriptArray!(ScriptString) StringArray, ScriptString* out_Result, ScriptString delim, bool bIgnoreBlanks)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = StringArray;
		*cast(ScriptString*)&params[12] = *out_Result;
		*cast(ScriptString*)&params[24] = delim;
		*cast(bool*)&params[36] = bIgnoreBlanks;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2480], params.ptr, cast(void*)0);
		*out_Result = *cast(ScriptString*)&params[12];
	}
	final ScriptString GetRightMost(ScriptString Text)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2486], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString ConcatEqual_StrStr(ScriptString* A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2491], params.ptr, cast(void*)0);
		*A = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[24];
	}
	final ScriptString Split(ScriptString Text, ScriptString SplitStr, bool bOmitSplitStr)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(ScriptString*)&params[12] = SplitStr;
		*cast(bool*)&params[24] = bOmitSplitStr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2495], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[28];
	}
	final ScriptString Repl(ScriptString Src, ScriptString Match, ScriptString With, bool bCaseSensitive)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Src;
		*cast(ScriptString*)&params[12] = Match;
		*cast(ScriptString*)&params[24] = With;
		*cast(bool*)&params[36] = bCaseSensitive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2499], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[40];
	}
	final int Asc(ScriptString S)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2505], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final ScriptString Chr(int I)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = I;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2511], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString Locs(ScriptString S)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2514], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString Caps(ScriptString S)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2517], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString Right(ScriptString S, int I)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(int*)&params[12] = I;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2520], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	final ScriptString Left(ScriptString S, int I)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(int*)&params[12] = I;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2523], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	final ScriptString Mid(ScriptString S, int I, int J)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(int*)&params[12] = I;
		*cast(int*)&params[16] = J;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2527], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	final int InStr(ScriptString S, ScriptString T, bool bSearchFromRight, bool bIgnoreCase, int StartPos)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptString*)&params[12] = T;
		*cast(bool*)&params[24] = bSearchFromRight;
		*cast(bool*)&params[28] = bIgnoreCase;
		*cast(int*)&params[32] = StartPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2531], params.ptr, cast(void*)0);
		return *cast(int*)&params[36];
	}
	final int Len(ScriptString S)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2536], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final ScriptString SubtractEqual_StrStr(ScriptString* A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2543], params.ptr, cast(void*)0);
		*A = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[24];
	}
	final ScriptString AtEqual_StrStr(ScriptString* A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2546], params.ptr, cast(void*)0);
		*A = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[24];
	}
	final bool ComplementEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2553], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool NotEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2556], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool EqualEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2560], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool GreaterEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2564], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool LessEqual_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2568], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool Greater_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2572], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool Less_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2576], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final ScriptString At_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2580], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	final ScriptString Concat_StrStr(ScriptString A, ScriptString B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = A;
		*cast(ScriptString*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2584], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	final Rotator MakeRotator(int Pitch, int Yaw, int Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Pitch;
		*cast(int*)&params[4] = Yaw;
		*cast(int*)&params[8] = Roll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2588], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final bool SClampRotAxis(float DeltaTime, int ViewAxis, int* out_DeltaViewAxis, int MaxLimit, int MinLimit, float InterpolationSpeed)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = ViewAxis;
		*cast(int*)&params[8] = *out_DeltaViewAxis;
		*cast(int*)&params[12] = MaxLimit;
		*cast(int*)&params[16] = MinLimit;
		*cast(float*)&params[20] = InterpolationSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2592], params.ptr, cast(void*)0);
		*out_DeltaViewAxis = *cast(int*)&params[8];
		return *cast(bool*)&params[24];
	}
	final int ClampRotAxisFromRange(int Current, int Min, int Max)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Current;
		*cast(int*)&params[4] = Min;
		*cast(int*)&params[8] = Max;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2598], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int NormalizeRotAxis(int Angle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Angle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2601], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final float FInterpTo(float Current, float Target, float DeltaTime, float InterpSpeed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(float*)&params[4] = Target;
		*cast(float*)&params[8] = DeltaTime;
		*cast(float*)&params[12] = InterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2605], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final int ClampRotAxisFromBase(int Current, int Center, int MaxDelta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Current;
		*cast(int*)&params[4] = Center;
		*cast(int*)&params[8] = MaxDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2609], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final void ClampRotAxis(int ViewAxis, int* out_DeltaViewAxis, int MaxLimit, int MinLimit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ViewAxis;
		*cast(int*)&params[4] = *out_DeltaViewAxis;
		*cast(int*)&params[8] = MaxLimit;
		*cast(int*)&params[12] = MinLimit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2616], params.ptr, cast(void*)0);
		*out_DeltaViewAxis = *cast(int*)&params[4];
	}
	final float RSize(Rotator R)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = R;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2622], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float RDiff(Rotator A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2628], params.ptr, cast(void*)0);
		return *cast(float*)&params[24];
	}
	final Rotator RInterpTo(Rotator Current, Rotator Target, float DeltaTime, float InterpSpeed, bool bConstantInterpSpeed)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Rotator*)params.ptr = Current;
		*cast(Rotator*)&params[12] = Target;
		*cast(float*)&params[24] = DeltaTime;
		*cast(float*)&params[28] = InterpSpeed;
		*cast(bool*)&params[32] = bConstantInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2634], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[36];
	}
	final Rotator RTransform(Rotator R, Rotator RBasis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = R;
		*cast(Rotator*)&params[12] = RBasis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2637], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[24];
	}
	final Rotator RSmerp(Rotator A, Rotator B, float Alpha, bool bShortestPath)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		*cast(bool*)&params[28] = bShortestPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2644], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[32];
	}
	final Rotator RLerp(Rotator A, Rotator B, float Alpha, bool bShortestPath)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		*cast(bool*)&params[28] = bShortestPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2648], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[32];
	}
	final Rotator Normalize(Rotator Rot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = Rot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2654], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final Rotator OrthoRotation(Vector X, Vector Y, Vector Z)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = X;
		*cast(Vector*)&params[12] = Y;
		*cast(Vector*)&params[24] = Z;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2660], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[36];
	}
	final Rotator RotRand(bool bRoll)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bRoll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2663], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	final Vector GetRotatorAxis(Rotator A, int Axis)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(int*)&params[12] = Axis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2668], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final void GetUnAxes(Rotator A, Vector* X, Vector* Y, Vector* Z)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Vector*)&params[12] = *X;
		*cast(Vector*)&params[24] = *Y;
		*cast(Vector*)&params[36] = *Z;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2671], params.ptr, cast(void*)0);
		*X = *cast(Vector*)&params[12];
		*Y = *cast(Vector*)&params[24];
		*Z = *cast(Vector*)&params[36];
	}
	final void GetAxes(Rotator A, Vector* X, Vector* Y, Vector* Z)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Vector*)&params[12] = *X;
		*cast(Vector*)&params[24] = *Y;
		*cast(Vector*)&params[36] = *Z;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2675], params.ptr, cast(void*)0);
		*X = *cast(Vector*)&params[12];
		*Y = *cast(Vector*)&params[24];
		*Z = *cast(Vector*)&params[36];
	}
	final bool ClockwiseFrom_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2680], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final Rotator SubtractEqual_RotatorRotator(Rotator* A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = *A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2685], params.ptr, cast(void*)0);
		*A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[24];
	}
	final Rotator AddEqual_RotatorRotator(Rotator* A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = *A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2689], params.ptr, cast(void*)0);
		*A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[24];
	}
	final Rotator Subtract_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2693], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[24];
	}
	final Rotator Add_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2697], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[24];
	}
	final Rotator DivideEqual_RotatorFloat(Rotator* A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = *A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2701], params.ptr, cast(void*)0);
		*A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[16];
	}
	final Rotator MultiplyEqual_RotatorFloat(Rotator* A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = *A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2705], params.ptr, cast(void*)0);
		*A = *cast(Rotator*)params.ptr;
		return *cast(Rotator*)&params[16];
	}
	final Rotator Divide_RotatorFloat(Rotator A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2709], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final Rotator Multiply_FloatRotator(float A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(Rotator*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2713], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final Rotator Multiply_RotatorFloat(Rotator A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2717], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final bool NotEqual_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2721], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool EqualEqual_RotatorRotator(Rotator A, Rotator B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2725], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool InCylinder(Vector Origin, Rotator Dir, float Width, Vector A, bool bIgnoreZ)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(Rotator*)&params[12] = Dir;
		*cast(float*)&params[24] = Width;
		*cast(Vector*)&params[28] = A;
		*cast(bool*)&params[40] = bIgnoreZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2729], params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	final float NoZDot(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2733], params.ptr, cast(void*)0);
		return *cast(float*)&params[24];
	}
	final Vector ClampLength(Vector V, float MaxLength)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = V;
		*cast(float*)&params[12] = MaxLength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2742], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final Vector VInterpTo(Vector Current, Vector Target, float DeltaTime, float InterpSpeed)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = Current;
		*cast(Vector*)&params[12] = Target;
		*cast(float*)&params[24] = DeltaTime;
		*cast(float*)&params[28] = InterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2746], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[32];
	}
	final bool IsZero(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2750], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final Vector ProjectOnTo(Vector X, Vector Y)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = X;
		*cast(Vector*)&params[12] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2756], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector MirrorVectorByNormal(Vector InVect, Vector InNormal)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = InVect;
		*cast(Vector*)&params[12] = InNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2759], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector VRandCone2(Vector Dir, float HorizontalConeHalfAngleRadians, float VerticalConeHalfAngleRadians)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		*cast(float*)&params[12] = HorizontalConeHalfAngleRadians;
		*cast(float*)&params[16] = VerticalConeHalfAngleRadians;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2763], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	final Vector VRandCone(Vector Dir, float ConeHalfAngleRadians)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		*cast(float*)&params[12] = ConeHalfAngleRadians;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2767], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final Vector VRand()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2772], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Vector VSmerp(Vector A, Vector B, float Alpha)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2776], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	final Vector VLerp(Vector A, Vector B, float Alpha)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		*cast(float*)&params[24] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2778], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[28];
	}
	final Vector Normal(Vector A)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2783], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final float VSizeSq2D(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2788], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float VSizeSq(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2791], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float VSize2D(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2794], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float VSize(Vector A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2797], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final Vector SubtractEqual_VectorVector(Vector* A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = *A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2800], params.ptr, cast(void*)0);
		*A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[24];
	}
	final Vector AddEqual_VectorVector(Vector* A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = *A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2803], params.ptr, cast(void*)0);
		*A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[24];
	}
	final Vector DivideEqual_VectorFloat(Vector* A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2807], params.ptr, cast(void*)0);
		*A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[16];
	}
	final Vector MultiplyEqual_VectorVector(Vector* A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = *A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2811], params.ptr, cast(void*)0);
		*A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[24];
	}
	final Vector MultiplyEqual_VectorFloat(Vector* A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2815], params.ptr, cast(void*)0);
		*A = *cast(Vector*)params.ptr;
		return *cast(Vector*)&params[16];
	}
	final Vector Cross_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2819], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final float Dot_VectorVector(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2823], params.ptr, cast(void*)0);
		return *cast(float*)&params[24];
	}
	final bool NotEqual_VectorVector(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2827], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool EqualEqual_VectorVector(Vector A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2831], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final Vector GreaterGreater_VectorRotator(Vector A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2835], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector LessLess_VectorRotator(Vector A, Rotator B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Rotator*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2839], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector Subtract_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2843], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector Add_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2847], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector Divide_VectorFloat(Vector A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2851], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final Vector Multiply_VectorVector(Vector A, Vector B)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(Vector*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2855], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	final Vector Multiply_FloatVector(float A, Vector B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(Vector*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2859], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final Vector Multiply_VectorFloat(Vector A, float B)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		*cast(float*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2863], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	final Vector Subtract_PreVector(Vector A)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2867], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final float FInterpConstantTo(float Current, float Target, float DeltaTime, float InterpSpeed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(float*)&params[4] = Target;
		*cast(float*)&params[8] = DeltaTime;
		*cast(float*)&params[12] = InterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2871], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final float FPctByRange(float Value, float InMin, float InMax)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Value;
		*cast(float*)&params[4] = InMin;
		*cast(float*)&params[8] = InMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2879], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float RandRange(float InMin, float InMax)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InMin;
		*cast(float*)&params[4] = InMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2885], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float FInterpEaseInOut(float A, float B, float Alpha, float Exp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		*cast(float*)&params[12] = Exp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2890], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final float FInterpEaseOut(float A, float B, float Alpha, float Exp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		*cast(float*)&params[12] = Exp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2894], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final float FInterpEaseIn(float A, float B, float Alpha, float Exp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		*cast(float*)&params[12] = Exp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2900], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final float FCubicInterp(float P0, float T0, float P1, float T1, float A)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = P0;
		*cast(float*)&params[4] = T0;
		*cast(float*)&params[8] = P1;
		*cast(float*)&params[12] = T1;
		*cast(float*)&params[16] = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2906], params.ptr, cast(void*)0);
		return *cast(float*)&params[20];
	}
	final int FCeil(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2912], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int FFloor(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2919], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int Round(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2922], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final float Lerp(float A, float B, float Alpha)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		*cast(float*)&params[8] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2925], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float FClamp(float V, float A, float B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = V;
		*cast(float*)&params[4] = A;
		*cast(float*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2928], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float FMax(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2933], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float FMin(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2938], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float FRand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2942], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float Square(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2946], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Sqrt(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2948], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Loge(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2951], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Exp(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2954], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Atan2(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2957], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float Atan(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2960], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Tan(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2964], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Cos(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2969], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Asin(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2972], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Sin(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2975], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float Abs(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2978], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float SubtractEqual_FloatFloat(float* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2981], params.ptr, cast(void*)0);
		*A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	final float AddEqual_FloatFloat(float* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2984], params.ptr, cast(void*)0);
		*A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	final float DivideEqual_FloatFloat(float* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2988], params.ptr, cast(void*)0);
		*A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	final float MultiplyEqual_FloatFloat(float* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2992], params.ptr, cast(void*)0);
		*A = *cast(float*)params.ptr;
		return *cast(float*)&params[8];
	}
	final bool NotEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[2996], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ComplementEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3000], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool EqualEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3004], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GreaterEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3008], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool LessEqual_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3012], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool Greater_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3016], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool Less_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3020], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final float Subtract_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3024], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float Add_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3028], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float Percent_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3032], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float Divide_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3036], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float Multiply_FloatFloat(float A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3040], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float MultiplyMultiply_FloatFloat(float Base, float Exp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Base;
		*cast(float*)&params[4] = Exp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3044], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float Subtract_PreFloat(float A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3048], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final ScriptString ToHex(int A)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3052], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final int Clamp(int V, int A, int B)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = V;
		*cast(int*)&params[4] = A;
		*cast(int*)&params[8] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3055], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int Max(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3058], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Min(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3063], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Rand(int Max)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Max;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3067], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int SubtractSubtract_Int(int* A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3071], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	final int AddAdd_Int(int* A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3074], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	final int SubtractSubtract_PreInt(int* A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3077], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	final int AddAdd_PreInt(int* A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3080], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[4];
	}
	final int SubtractEqual_IntInt(int* A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3083], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	final int AddEqual_IntInt(int* A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3086], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	final int DivideEqual_IntFloat(int* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3090], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	final int MultiplyEqual_IntFloat(int* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3094], params.ptr, cast(void*)0);
		*A = *cast(int*)params.ptr;
		return *cast(int*)&params[8];
	}
	final int Or_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3098], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Xor_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3102], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int And_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3106], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool NotEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3110], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool EqualEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3114], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GreaterEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3118], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool LessEqual_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3122], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool Greater_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3126], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool Less_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3130], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final int GreaterGreaterGreater_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3134], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GreaterGreater_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3138], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int LessLess_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3142], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Subtract_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3146], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Add_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3150], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Percent_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3154], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Divide_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3158], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Multiply_IntInt(int A, int B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = A;
		*cast(int*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3162], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int Subtract_PreInt(int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3166], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int Complement_PreInt(int A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3170], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final ubyte SubtractSubtract_Byte(ubyte* A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3173], params.ptr, cast(void*)0);
		*A = params[0];
		return params[1];
	}
	final ubyte AddAdd_Byte(ubyte* A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3176], params.ptr, cast(void*)0);
		*A = params[0];
		return params[1];
	}
	final ubyte SubtractSubtract_PreByte(ubyte* A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3179], params.ptr, cast(void*)0);
		*A = params[0];
		return params[1];
	}
	final ubyte AddAdd_PreByte(ubyte* A)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = *A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3182], params.ptr, cast(void*)0);
		*A = params[0];
		return params[1];
	}
	final ubyte SubtractEqual_ByteByte(ubyte* A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = *A;
		params[1] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3185], params.ptr, cast(void*)0);
		*A = params[0];
		return params[2];
	}
	final ubyte AddEqual_ByteByte(ubyte* A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = *A;
		params[1] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3188], params.ptr, cast(void*)0);
		*A = params[0];
		return params[2];
	}
	final ubyte DivideEqual_ByteByte(ubyte* A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = *A;
		params[1] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3192], params.ptr, cast(void*)0);
		*A = params[0];
		return params[2];
	}
	final ubyte MultiplyEqual_ByteFloat(ubyte* A, float B)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = *A;
		*cast(float*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3196], params.ptr, cast(void*)0);
		*A = params[0];
		return params[8];
	}
	final ubyte MultiplyEqual_ByteByte(ubyte* A, ubyte B)
	{
		ubyte params[3];
		params[] = 0;
		params[0] = *A;
		params[1] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3200], params.ptr, cast(void*)0);
		*A = params[0];
		return params[2];
	}
	final bool OrOr_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3204], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool XorXor_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3208], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AndAnd_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3212], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool NotEqual_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3216], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool EqualEqual_BoolBool(bool A, bool B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		*cast(bool*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3220], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool Not_PreBool(bool A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3224], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}

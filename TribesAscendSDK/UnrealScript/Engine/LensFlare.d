module UnrealScript.Engine.LensFlare;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.InterpCurveEdSetup;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface LensFlare : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LensFlare")); }
	private static __gshared LensFlare mDefaultProperties;
	@property final static LensFlare DefaultProperties() { mixin(MGDPC("LensFlare", "LensFlare Engine.Default__LensFlare")); }
	struct LensFlareElement
	{
		private ubyte __buffer__[324];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.LensFlare.LensFlareElement")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(MaterialInterface) LFMaterials() { mixin(MGPS("ScriptArray!(MaterialInterface)", 28)); }
				DistributionFloat.RawDistributionFloat DistMap_Alpha() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 296)); }
				DistributionVector.RawDistributionVector DistMap_Color() { mixin(MGPS("DistributionVector.RawDistributionVector", 268)); }
				DistributionVector.RawDistributionVector DistMap_Scale() { mixin(MGPS("DistributionVector.RawDistributionVector", 240)); }
				DistributionVector.RawDistributionVector Offset() { mixin(MGPS("DistributionVector.RawDistributionVector", 212)); }
				DistributionFloat.RawDistributionFloat Alpha() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 184)); }
				DistributionVector.RawDistributionVector ColorVar() { mixin(MGPS("DistributionVector.RawDistributionVector", 156)); }
				DistributionFloat.RawDistributionFloat Rotation() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 124)); }
				DistributionVector.RawDistributionVector AxisScaling() { mixin(MGPS("DistributionVector.RawDistributionVector", 96)); }
				DistributionFloat.RawDistributionFloat Scaling() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 68)); }
				DistributionFloat.RawDistributionFloat LFMaterialIndex() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 40)); }
				Vector Size() { mixin(MGPS("Vector", 16)); }
				float RayDistance() { mixin(MGPS("float", 8)); }
				ScriptName ElementName() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bOrientTowardsSource() { mixin(MGBPS(152, 0x1)); }
			bool bOrientTowardsSource(bool val) { mixin(MSBPS(152, 0x1)); }
			bool bModulateColorBySource() { mixin(MGBPS(12, 0x8)); }
			bool bModulateColorBySource(bool val) { mixin(MSBPS(12, 0x8)); }
			bool bNormalizeRadialDistance() { mixin(MGBPS(12, 0x4)); }
			bool bNormalizeRadialDistance(bool val) { mixin(MSBPS(12, 0x4)); }
			bool bUseSourceDistance() { mixin(MGBPS(12, 0x2)); }
			bool bUseSourceDistance(bool val) { mixin(MSBPS(12, 0x2)); }
			bool bIsEnabled() { mixin(MGBPS(12, 0x1)); }
			bool bIsEnabled(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	struct LensFlareElementCurvePair
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.LensFlare.LensFlareElementCurvePair")); }
		@property final auto ref
		{
			UObject CurveObject() { mixin(MGPS("UObject", 12)); }
			ScriptString CurveName() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LensFlare.LensFlareElement) Reflections() { mixin(MGPC("ScriptArray!(LensFlare.LensFlareElement)", 392)); }
			Texture2D ThumbnailImage() { mixin(MGPC("Texture2D", 504)); }
			float ThumbnailDistance() { mixin(MGPC("float", 500)); }
			Rotator ThumbnailAngle() { mixin(MGPC("Rotator", 488)); }
			int ReflectionCount() { mixin(MGPC("int", 484)); }
			InterpCurveEdSetup CurveEdSetup() { mixin(MGPC("InterpCurveEdSetup", 480)); }
			UObject.Box FixedRelativeBoundingBox() { mixin(MGPC("UObject.Box", 452)); }
			DistributionFloat.RawDistributionFloat ScreenPercentageMap() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 420)); }
			float Radius() { mixin(MGPC("float", 416)); }
			float ConeFudgeFactor() { mixin(MGPC("float", 412)); }
			float InnerCone() { mixin(MGPC("float", 408)); }
			float OuterCone() { mixin(MGPC("float", 404)); }
			Scene.ESceneDepthPriorityGroup ReflectionsDPG() { mixin(MGPC("Scene.ESceneDepthPriorityGroup", 389)); }
			Scene.ESceneDepthPriorityGroup SourceDPG() { mixin(MGPC("Scene.ESceneDepthPriorityGroup", 388)); }
			StaticMesh SourceMesh() { mixin(MGPC("StaticMesh", 384)); }
			LensFlare.LensFlareElement SourceElement() { mixin(MGPC("LensFlare.LensFlareElement", 60)); }
		}
		bool ThumbnailImageOutOfDate() { mixin(MGBPC(448, 0x4)); }
		bool ThumbnailImageOutOfDate(bool val) { mixin(MSBPC(448, 0x4)); }
		bool bRenderDebugLines() { mixin(MGBPC(448, 0x2)); }
		bool bRenderDebugLines(bool val) { mixin(MSBPC(448, 0x2)); }
		bool bUseFixedRelativeBoundingBox() { mixin(MGBPC(448, 0x1)); }
		bool bUseFixedRelativeBoundingBox(bool val) { mixin(MSBPC(448, 0x1)); }
	}
}

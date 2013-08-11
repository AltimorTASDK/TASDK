module UnrealScript.Engine.LensFlare;

import ScriptClasses;
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
	struct LensFlareElement
	{
		public @property final auto ref ScriptArray!(MaterialInterface) LFMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 28); }
		private ubyte __LFMaterials[12];
		public @property final auto ref DistributionFloat.RawDistributionFloat DistMap_Alpha() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 296); }
		private ubyte __DistMap_Alpha[28];
		public @property final auto ref DistributionVector.RawDistributionVector DistMap_Color() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 268); }
		private ubyte __DistMap_Color[28];
		public @property final auto ref DistributionVector.RawDistributionVector DistMap_Scale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 240); }
		private ubyte __DistMap_Scale[28];
		public @property final auto ref DistributionVector.RawDistributionVector Offset() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 212); }
		private ubyte __Offset[28];
		public @property final auto ref DistributionFloat.RawDistributionFloat Alpha() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 184); }
		private ubyte __Alpha[28];
		// WARNING: Property 'Color' has the same name as a defined type!
		public @property final bool bOrientTowardsSource() { return (*cast(uint*)(cast(size_t)&this + 152) & 0x1) != 0; }
		public @property final bool bOrientTowardsSource(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 152) &= ~0x1; } return val; }
		private ubyte __bOrientTowardsSource[4];
		public @property final auto ref DistributionFloat.RawDistributionFloat Rotation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 124); }
		private ubyte __Rotation[28];
		public @property final auto ref DistributionVector.RawDistributionVector AxisScaling() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 96); }
		private ubyte __AxisScaling[28];
		public @property final auto ref DistributionFloat.RawDistributionFloat Scaling() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 68); }
		private ubyte __Scaling[28];
		public @property final auto ref DistributionFloat.RawDistributionFloat LFMaterialIndex() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 40); }
		private ubyte __LFMaterialIndex[28];
		public @property final auto ref Vector Size() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Size[12];
		public @property final bool bModulateColorBySource() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x8) != 0; }
		public @property final bool bModulateColorBySource(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x8; } return val; }
		private ubyte __bModulateColorBySource[4];
		public @property final bool bNormalizeRadialDistance() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
		public @property final bool bNormalizeRadialDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
		private ubyte __bNormalizeRadialDistance[4];
		public @property final bool bUseSourceDistance() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
		public @property final bool bUseSourceDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
		private ubyte __bUseSourceDistance[4];
		public @property final bool bIsEnabled() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bIsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bIsEnabled[4];
		public @property final auto ref float RayDistance() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __RayDistance[4];
		public @property final auto ref ScriptName ElementName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ElementName[8];
	}
	struct LensFlareElementCurvePair
	{
		public @property final auto ref UObject CurveObject() { return *cast(UObject*)(cast(size_t)&this + 12); }
		private ubyte __CurveObject[4];
		public @property final auto ref ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __CurveName[12];
	}
	public @property final auto ref ScriptArray!(LensFlare.LensFlareElement) Reflections() { return *cast(ScriptArray!(LensFlare.LensFlareElement)*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref Texture2D ThumbnailImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float ThumbnailDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref Rotator ThumbnailAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref int ReflectionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref InterpCurveEdSetup CurveEdSetup() { return *cast(InterpCurveEdSetup*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref UObject.Box FixedRelativeBoundingBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 452); }
	public @property final bool ThumbnailImageOutOfDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 448) & 0x4) != 0; }
	public @property final bool ThumbnailImageOutOfDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 448) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 448) &= ~0x4; } return val; }
	public @property final bool bRenderDebugLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 448) & 0x2) != 0; }
	public @property final bool bRenderDebugLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 448) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 448) &= ~0x2; } return val; }
	public @property final bool bUseFixedRelativeBoundingBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 448) & 0x1) != 0; }
	public @property final bool bUseFixedRelativeBoundingBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 448) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 448) &= ~0x1; } return val; }
	public @property final auto ref DistributionFloat.RawDistributionFloat ScreenPercentageMap() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref float ConeFudgeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref float InnerCone() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref float OuterCone() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref Scene.ESceneDepthPriorityGroup ReflectionsDPG() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 389); }
	public @property final auto ref Scene.ESceneDepthPriorityGroup SourceDPG() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref StaticMesh SourceMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref LensFlare.LensFlareElement SourceElement() { return *cast(LensFlare.LensFlareElement*)(cast(size_t)cast(void*)this + 60); }
}

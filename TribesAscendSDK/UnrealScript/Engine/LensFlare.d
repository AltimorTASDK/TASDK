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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LensFlare")); }
	struct LensFlareElement
	{
		private ubyte __buffer__[324];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LensFlare.LensFlareElement")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(MaterialInterface) LFMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 28); }
				DistributionFloat.RawDistributionFloat DistMap_Alpha() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 296); }
				DistributionVector.RawDistributionVector DistMap_Color() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 268); }
				DistributionVector.RawDistributionVector DistMap_Scale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 240); }
				DistributionVector.RawDistributionVector Offset() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 212); }
				DistributionFloat.RawDistributionFloat Alpha() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 184); }
				// WARNING: Property 'Color' has the same name as a defined type!
				DistributionFloat.RawDistributionFloat Rotation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 124); }
				DistributionVector.RawDistributionVector AxisScaling() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)&this + 96); }
				DistributionFloat.RawDistributionFloat Scaling() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 68); }
				DistributionFloat.RawDistributionFloat LFMaterialIndex() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 40); }
				Vector Size() { return *cast(Vector*)(cast(size_t)&this + 16); }
				float RayDistance() { return *cast(float*)(cast(size_t)&this + 8); }
				ScriptName ElementName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bOrientTowardsSource() { return (*cast(uint*)(cast(size_t)&this + 152) & 0x1) != 0; }
			bool bOrientTowardsSource(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 152) &= ~0x1; } return val; }
			bool bModulateColorBySource() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x8) != 0; }
			bool bModulateColorBySource(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x8; } return val; }
			bool bNormalizeRadialDistance() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
			bool bNormalizeRadialDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
			bool bUseSourceDistance() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
			bool bUseSourceDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
			bool bIsEnabled() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bIsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct LensFlareElementCurvePair
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LensFlare.LensFlareElementCurvePair")); }
		@property final auto ref
		{
			UObject CurveObject() { return *cast(UObject*)(cast(size_t)&this + 12); }
			ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LensFlare.LensFlareElement) Reflections() { return *cast(ScriptArray!(LensFlare.LensFlareElement)*)(cast(size_t)cast(void*)this + 392); }
			Texture2D ThumbnailImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 504); }
			float ThumbnailDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			Rotator ThumbnailAngle() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 488); }
			int ReflectionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
			InterpCurveEdSetup CurveEdSetup() { return *cast(InterpCurveEdSetup*)(cast(size_t)cast(void*)this + 480); }
			UObject.Box FixedRelativeBoundingBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 452); }
			DistributionFloat.RawDistributionFloat ScreenPercentageMap() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 420); }
			float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 416); }
			float ConeFudgeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 412); }
			float InnerCone() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
			float OuterCone() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
			Scene.ESceneDepthPriorityGroup ReflectionsDPG() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 389); }
			Scene.ESceneDepthPriorityGroup SourceDPG() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 388); }
			StaticMesh SourceMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 384); }
			LensFlare.LensFlareElement SourceElement() { return *cast(LensFlare.LensFlareElement*)(cast(size_t)cast(void*)this + 60); }
		}
		bool ThumbnailImageOutOfDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 448) & 0x4) != 0; }
		bool ThumbnailImageOutOfDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 448) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 448) &= ~0x4; } return val; }
		bool bRenderDebugLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 448) & 0x2) != 0; }
		bool bRenderDebugLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 448) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 448) &= ~0x2; } return val; }
		bool bUseFixedRelativeBoundingBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 448) & 0x1) != 0; }
		bool bUseFixedRelativeBoundingBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 448) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 448) &= ~0x1; } return val; }
	}
}

module UnrealScript.Engine.LandscapeComponent;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface LandscapeComponent : PrimitiveComponent
{
public extern(D):
	enum ETerrainComponentNeighbors : ubyte
	{
		TCN_NW = 0,
		TCN_N = 1,
		TCN_NE = 2,
		TCN_W = 3,
		TCN_E = 4,
		TCN_SW = 5,
		TCN_S = 6,
		TCN_SE = 7,
		TCN_MAX = 8,
	}
	struct LandscapeComponentAlphaInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(ubyte) AlphaValues() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 4); }
			int LayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct WeightmapLayerAllocationInfo
	{
		private ubyte __buffer__[10];
	public extern(D):
		@property final auto ref
		{
			ubyte WeightmapTextureChannel() { return *cast(ubyte*)(cast(size_t)&this + 9); }
			ubyte WeightmapTextureIndex() { return *cast(ubyte*)(cast(size_t)&this + 8); }
			ScriptName LayerName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(LandscapeComponent.LandscapeComponentAlphaInfo) EditingAlphaLayerData() { return *cast(ScriptArray!(LandscapeComponent.LandscapeComponentAlphaInfo)*)(cast(size_t)cast(void*)this + 512); }
		ScriptArray!(LandscapeComponent.WeightmapLayerAllocationInfo) WeightmapLayerAllocations() { return *cast(ScriptArray!(LandscapeComponent.WeightmapLayerAllocationInfo)*)(cast(size_t)cast(void*)this + 532); }
		ScriptArray!(Texture2D) WeightmapTextures() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 544); }
		ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)cast(void*)this + 672); }
		ScriptArray!(UObject.Guid) IrrelevantLights() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 684); }
		int CollisionMipLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 704); }
		UObject.Pointer EditToolRenderData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 700); }
		EngineTypes.LightMapRef LightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 696); }
		UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 656); }
		int StaticLightingResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
		UObject.BoxSphereBounds CachedBoxSphereBounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 624); }
		Texture2D HeightmapTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 620); }
		UObject.Vector2D LayerUVPan() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 612); }
		float HeightmapSubsectionOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
		UObject.Vector4 HeightmapScaleBias() { return *cast(UObject.Vector4*)(cast(size_t)cast(void*)this + 592); }
		float WeightmapSubsectionOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
		UObject.Vector4 WeightmapScaleBias() { return *cast(UObject.Vector4*)(cast(size_t)cast(void*)this + 560); }
		ScriptName EditingAlphaLayerName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 524); }
		// WARNING: Property 'MaterialInstance' has the same name as a defined type!
		int NumSubsections() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
		int SubsectionSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
		int ComponentSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
		int SectionBaseY() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
		int SectionBaseX() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
	}
}

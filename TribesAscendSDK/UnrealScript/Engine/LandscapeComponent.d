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
		public @property final auto ref ScriptArray!(ubyte) AlphaValues() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 4); }
		private ubyte __AlphaValues[12];
		public @property final auto ref int LayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __LayerIndex[4];
	}
	struct WeightmapLayerAllocationInfo
	{
		public @property final auto ref ubyte WeightmapTextureChannel() { return *cast(ubyte*)(cast(size_t)&this + 9); }
		private ubyte __WeightmapTextureChannel[1];
		public @property final auto ref ubyte WeightmapTextureIndex() { return *cast(ubyte*)(cast(size_t)&this + 8); }
		private ubyte __WeightmapTextureIndex[1];
		public @property final auto ref ScriptName LayerName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __LayerName[8];
	}
	public @property final auto ref ScriptArray!(LandscapeComponent.LandscapeComponentAlphaInfo) EditingAlphaLayerData() { return *cast(ScriptArray!(LandscapeComponent.LandscapeComponentAlphaInfo)*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref ScriptArray!(LandscapeComponent.WeightmapLayerAllocationInfo) WeightmapLayerAllocations() { return *cast(ScriptArray!(LandscapeComponent.WeightmapLayerAllocationInfo)*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptArray!(Texture2D) WeightmapTextures() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref ScriptArray!(UObject.Guid) IrrelevantLights() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref int CollisionMipLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref UObject.Pointer EditToolRenderData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref EngineTypes.LightMapRef LightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref int StaticLightingResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref UObject.BoxSphereBounds CachedBoxSphereBounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref Texture2D HeightmapTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref UObject.Vector2D LayerUVPan() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float HeightmapSubsectionOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref UObject.Vector4 HeightmapScaleBias() { return *cast(UObject.Vector4*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float WeightmapSubsectionOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref UObject.Vector4 WeightmapScaleBias() { return *cast(UObject.Vector4*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref ScriptName EditingAlphaLayerName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 524); }
	// WARNING: Property 'MaterialInstance' has the same name as a defined type!
	public @property final auto ref int NumSubsections() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref int SubsectionSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref int ComponentSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int SectionBaseY() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref int SectionBaseX() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
}

module UnrealScript.Engine.LandscapeComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface LandscapeComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LandscapeComponent")); }
	private static __gshared LandscapeComponent mDefaultProperties;
	@property final static LandscapeComponent DefaultProperties() { mixin(MGDPC("LandscapeComponent", "LandscapeComponent Engine.Default__LandscapeComponent")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.LandscapeComponent.LandscapeComponentAlphaInfo")); }
		@property final auto ref
		{
			ScriptArray!(ubyte) AlphaValues() { mixin(MGPS("ScriptArray!(ubyte)", 4)); }
			int LayerIndex() { mixin(MGPS("int", 0)); }
		}
	}
	struct WeightmapLayerAllocationInfo
	{
		private ubyte __buffer__[10];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.LandscapeComponent.WeightmapLayerAllocationInfo")); }
		@property final auto ref
		{
			ubyte WeightmapTextureChannel() { mixin(MGPS("ubyte", 9)); }
			ubyte WeightmapTextureIndex() { mixin(MGPS("ubyte", 8)); }
			ScriptName LayerName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(LandscapeComponent.LandscapeComponentAlphaInfo) EditingAlphaLayerData() { mixin(MGPC("ScriptArray!(LandscapeComponent.LandscapeComponentAlphaInfo)", 512)); }
		ScriptArray!(LandscapeComponent.WeightmapLayerAllocationInfo) WeightmapLayerAllocations() { mixin(MGPC("ScriptArray!(LandscapeComponent.WeightmapLayerAllocationInfo)", 532)); }
		ScriptArray!(Texture2D) WeightmapTextures() { mixin(MGPC("ScriptArray!(Texture2D)", 544)); }
		ScriptArray!(ShadowMap2D) ShadowMaps() { mixin(MGPC("ScriptArray!(ShadowMap2D)", 672)); }
		ScriptArray!(UObject.Guid) IrrelevantLights() { mixin(MGPC("ScriptArray!(UObject.Guid)", 684)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Neighbors'!
		int CollisionMipLevel() { mixin(MGPC("int", 704)); }
		Pointer EditToolRenderData() { mixin(MGPC("Pointer", 700)); }
		EngineTypes.LightMapRef LightMap() { mixin(MGPC("EngineTypes.LightMapRef", 696)); }
		UObject.Guid LightingGuid() { mixin(MGPC("UObject.Guid", 656)); }
		int StaticLightingResolution() { mixin(MGPC("int", 652)); }
		UObject.BoxSphereBounds CachedBoxSphereBounds() { mixin(MGPC("UObject.BoxSphereBounds", 624)); }
		Texture2D HeightmapTexture() { mixin(MGPC("Texture2D", 620)); }
		UObject.Vector2D LayerUVPan() { mixin(MGPC("UObject.Vector2D", 612)); }
		float HeightmapSubsectionOffset() { mixin(MGPC("float", 608)); }
		UObject.Vector4 HeightmapScaleBias() { mixin(MGPC("UObject.Vector4", 592)); }
		float WeightmapSubsectionOffset() { mixin(MGPC("float", 576)); }
		UObject.Vector4 WeightmapScaleBias() { mixin(MGPC("UObject.Vector4", 560)); }
		ScriptName EditingAlphaLayerName() { mixin(MGPC("ScriptName", 524)); }
		// WARNING: Property 'MaterialInstance' has the same name as a defined type!
		int NumSubsections() { mixin(MGPC("int", 504)); }
		int SubsectionSizeQuads() { mixin(MGPC("int", 500)); }
		int ComponentSizeQuads() { mixin(MGPC("int", 496)); }
		int SectionBaseY() { mixin(MGPC("int", 492)); }
		int SectionBaseX() { mixin(MGPC("int", 488)); }
	}
}

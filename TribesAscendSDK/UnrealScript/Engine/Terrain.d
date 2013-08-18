module UnrealScript.Engine.Terrain;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponentFactory;
import UnrealScript.Engine.TerrainWeightMapTexture;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.TerrainLayerSetup;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.LightComponent;

extern(C++) interface Terrain : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Terrain")); }
	private static __gshared Terrain mDefaultProperties;
	@property final static Terrain DefaultProperties() { mixin(MGDPC("Terrain", "Terrain Engine.Default__Terrain")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCalcLayerBounds;
			ScriptFunction mPostBeginPlay;
		}
		public @property static final
		{
			ScriptFunction CalcLayerBounds() { mixin(MGF("mCalcLayerBounds", "Function Engine.Terrain.CalcLayerBounds")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Terrain.PostBeginPlay")); }
		}
	}
	struct TerrainHeight
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainHeight")); }
	}
	struct TerrainInfoData
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainInfoData")); }
	}
	struct TerrainLayer
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainLayer")); }
		@property final
		{
			auto ref
			{
				int MaxY() { mixin(MGPS("int", 44)); }
				int MaxX() { mixin(MGPS("int", 40)); }
				int MinY() { mixin(MGPS("int", 36)); }
				int MinX() { mixin(MGPS("int", 32)); }
				UObject.Color WireframeColor() { mixin(MGPS("UObject.Color", 28)); }
				UObject.Color HighlightColor() { mixin(MGPS("UObject.Color", 24)); }
				int AlphaMapIndex() { mixin(MGPS("int", 16)); }
				TerrainLayerSetup Setup() { mixin(MGPS("TerrainLayerSetup", 12)); }
				ScriptString Name() { mixin(MGPS("ScriptString", 0)); }
			}
			bool Hidden() { mixin(MGBPS(20, 0x4)); }
			bool Hidden(bool val) { mixin(MSBPS(20, 0x4)); }
			bool WireframeHighlighted() { mixin(MGBPS(20, 0x2)); }
			bool WireframeHighlighted(bool val) { mixin(MSBPS(20, 0x2)); }
			bool Highlighted() { mixin(MGBPS(20, 0x1)); }
			bool Highlighted(bool val) { mixin(MSBPS(20, 0x1)); }
		}
	}
	struct TerrainDecoLayer
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainDecoLayer")); }
		@property final auto ref
		{
			ScriptArray!(Terrain.TerrainDecoration) Decorations() { mixin(MGPS("ScriptArray!(Terrain.TerrainDecoration)", 12)); }
			int AlphaMapIndex() { mixin(MGPS("int", 24)); }
			ScriptString Name() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct AlphaMap
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.AlphaMap")); }
	}
	struct TerrainWeightedMaterial
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainWeightedMaterial")); }
	}
	struct SelectedTerrainVertex
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.SelectedTerrainVertex")); }
		@property final auto ref
		{
			int Weight() { mixin(MGPS("int", 8)); }
			int Y() { mixin(MGPS("int", 4)); }
			int X() { mixin(MGPS("int", 0)); }
		}
	}
	struct TerrainDecorationInstance
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainDecorationInstance")); }
		@property final auto ref
		{
			int Yaw() { mixin(MGPS("int", 16)); }
			float Scale() { mixin(MGPS("float", 12)); }
			float Y() { mixin(MGPS("float", 8)); }
			float X() { mixin(MGPS("float", 4)); }
			// WARNING: Property 'Component' has the same name as a defined type!
		}
	}
	struct TerrainDecoration
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainDecoration")); }
		@property final auto ref
		{
			ScriptArray!(Terrain.TerrainDecorationInstance) Instances() { mixin(MGPS("ScriptArray!(Terrain.TerrainDecorationInstance)", 24)); }
			int RandSeed() { mixin(MGPS("int", 20)); }
			float SlopeRotationBlend() { mixin(MGPS("float", 16)); }
			float Density() { mixin(MGPS("float", 12)); }
			float MaxScale() { mixin(MGPS("float", 8)); }
			float MinScale() { mixin(MGPS("float", 4)); }
			// WARNING: Property 'Factory' has the same name as a defined type!
		}
	}
	struct TerrainMaterialResource
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.TerrainMaterialResource")); }
	}
	struct CachedTerrainMaterialArray
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Terrain.CachedTerrainMaterialArray")); }
		@property final auto ref ScriptArray!(Pointer) CachedMaterials() { mixin(MGPS("ScriptArray!(Pointer)", 0)); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Terrain.TerrainHeight) Heights() { mixin(MGPC("ScriptArray!(Terrain.TerrainHeight)", 476)); }
			ScriptArray!(Terrain.TerrainInfoData) InfoData() { mixin(MGPC("ScriptArray!(Terrain.TerrainInfoData)", 488)); }
			ScriptArray!(Terrain.TerrainLayer) Layers() { mixin(MGPC("ScriptArray!(Terrain.TerrainLayer)", 500)); }
			ScriptArray!(Terrain.TerrainDecoLayer) DecoLayers() { mixin(MGPC("ScriptArray!(Terrain.TerrainDecoLayer)", 516)); }
			ScriptArray!(Terrain.AlphaMap) AlphaMaps() { mixin(MGPC("ScriptArray!(Terrain.AlphaMap)", 528)); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) TerrainComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 540)); }
			ScriptArray!(Terrain.TerrainWeightedMaterial) WeightedMaterials() { mixin(MGPC("ScriptArray!(Terrain.TerrainWeightedMaterial)", 560)); }
			ScriptArray!(TerrainWeightMapTexture) WeightedTextureMaps() { mixin(MGPC("ScriptArray!(TerrainWeightMapTexture)", 572)); }
			ScriptArray!(Terrain.SelectedTerrainVertex) SelectedVertices() { mixin(MGPC("ScriptArray!(Terrain.SelectedTerrainVertex)", 700)); }
			UObject.Guid LightingGuid() { mixin(MGPC("UObject.Guid", 716)); }
			UObject.Color WireframeColor() { mixin(MGPC("UObject.Color", 712)); }
			int EditorTessellationLevel() { mixin(MGPC("int", 696)); }
			Pointer ReleaseResourcesFence() { mixin(MGPC("Pointer", 692)); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { mixin(MGPC("EngineTypes.LightmassPrimitiveSettings", 664)); }
			LightComponent.LightingChannelContainer LightingChannels() { mixin(MGPC("LightComponent.LightingChannelContainer", 660)); }
			PhysicalMaterial TerrainPhysMaterialOverride() { mixin(MGPC("PhysicalMaterial", 656)); }
			int StaticLightingResolution() { mixin(MGPC("int", 648)); }
			int MaxComponentSize() { mixin(MGPC("int", 644)); }
			int NumPatchesY() { mixin(MGPC("int", 640)); }
			int NumPatchesX() { mixin(MGPC("int", 636)); }
			int NumVerticesY() { mixin(MGPC("int", 632)); }
			int NumVerticesX() { mixin(MGPC("int", 628)); }
			Terrain.CachedTerrainMaterialArray CachedTerrainMaterials() { mixin(MGPC("Terrain.CachedTerrainMaterialArray", 604)); }
			int CollisionTesselationLevel() { mixin(MGPC("int", 600)); }
			float TessellationCheckDistance() { mixin(MGPC("float", 596)); }
			float TesselationDistanceScale() { mixin(MGPC("float", 592)); }
			int MinTessellationLevel() { mixin(MGPC("int", 588)); }
			int MaxTesselationLevel() { mixin(MGPC("int", 584)); }
			int NumSectionsY() { mixin(MGPC("int", 556)); }
			int NumSectionsX() { mixin(MGPC("int", 552)); }
			int NormalMapLayer() { mixin(MGPC("int", 512)); }
		}
		bool bShowWireframe() { mixin(MGBPC(652, 0x8000)); }
		bool bShowWireframe(bool val) { mixin(MSBPC(652, 0x8000)); }
		bool bUseWorldOriginTextureUVs() { mixin(MGBPC(652, 0x4000)); }
		bool bUseWorldOriginTextureUVs(bool val) { mixin(MSBPC(652, 0x4000)); }
		bool bShowingCollision() { mixin(MGBPC(652, 0x2000)); }
		bool bShowingCollision(bool val) { mixin(MSBPC(652, 0x2000)); }
		bool bHeightmapLocked() { mixin(MGBPC(652, 0x1000)); }
		bool bHeightmapLocked(bool val) { mixin(MSBPC(652, 0x1000)); }
		bool bLocked() { mixin(MGBPC(652, 0x800)); }
		bool bLocked(bool val) { mixin(MSBPC(652, 0x800)); }
		bool bMorphingGradientsEnabled() { mixin(MGBPC(652, 0x400)); }
		bool bMorphingGradientsEnabled(bool val) { mixin(MSBPC(652, 0x400)); }
		bool bMorphingEnabled() { mixin(MGBPC(652, 0x200)); }
		bool bMorphingEnabled(bool val) { mixin(MSBPC(652, 0x200)); }
		bool bAcceptsDynamicLights() { mixin(MGBPC(652, 0x100)); }
		bool bAcceptsDynamicLights(bool val) { mixin(MSBPC(652, 0x100)); }
		bool bAllowRigidBodyUnderneath() { mixin(MGBPC(652, 0x80)); }
		bool bAllowRigidBodyUnderneath(bool val) { mixin(MSBPC(652, 0x80)); }
		bool bBlockRigidBody() { mixin(MGBPC(652, 0x40)); }
		bool bBlockRigidBody(bool val) { mixin(MSBPC(652, 0x40)); }
		bool bEnableSpecular() { mixin(MGBPC(652, 0x20)); }
		bool bEnableSpecular(bool val) { mixin(MSBPC(652, 0x20)); }
		bool bCastDynamicShadow() { mixin(MGBPC(652, 0x10)); }
		bool bCastDynamicShadow(bool val) { mixin(MSBPC(652, 0x10)); }
		bool bForceDirectLightMap() { mixin(MGBPC(652, 0x8)); }
		bool bForceDirectLightMap(bool val) { mixin(MSBPC(652, 0x8)); }
		bool bCastShadow() { mixin(MGBPC(652, 0x4)); }
		bool bCastShadow(bool val) { mixin(MSBPC(652, 0x4)); }
		bool bBilinearFilterLightmapGeneration() { mixin(MGBPC(652, 0x2)); }
		bool bBilinearFilterLightmapGeneration(bool val) { mixin(MSBPC(652, 0x2)); }
		bool bIsOverridingLightResolution() { mixin(MGBPC(652, 0x1)); }
		bool bIsOverridingLightResolution(bool val) { mixin(MSBPC(652, 0x1)); }
	}
final:
	void CalcLayerBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcLayerBounds, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}

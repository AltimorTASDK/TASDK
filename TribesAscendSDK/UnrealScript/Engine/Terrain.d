module UnrealScript.Engine.Terrain;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Terrain")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCalcLayerBounds;
			ScriptFunction mPostBeginPlay;
		}
		public @property static final
		{
			ScriptFunction CalcLayerBounds() { return mCalcLayerBounds ? mCalcLayerBounds : (mCalcLayerBounds = ScriptObject.Find!(ScriptFunction)("Function Engine.Terrain.CalcLayerBounds")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Terrain.PostBeginPlay")); }
		}
	}
	struct TerrainHeight
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainHeight")); }
	}
	struct TerrainInfoData
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainInfoData")); }
	}
	struct TerrainLayer
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainLayer")); }
		@property final
		{
			auto ref
			{
				int MaxY() { return *cast(int*)(cast(size_t)&this + 44); }
				int MaxX() { return *cast(int*)(cast(size_t)&this + 40); }
				int MinY() { return *cast(int*)(cast(size_t)&this + 36); }
				int MinX() { return *cast(int*)(cast(size_t)&this + 32); }
				UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)&this + 28); }
				UObject.Color HighlightColor() { return *cast(UObject.Color*)(cast(size_t)&this + 24); }
				int AlphaMapIndex() { return *cast(int*)(cast(size_t)&this + 16); }
				TerrainLayerSetup Setup() { return *cast(TerrainLayerSetup*)(cast(size_t)&this + 12); }
				ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool Hidden() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x4) != 0; }
			bool Hidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x4; } return val; }
			bool WireframeHighlighted() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
			bool WireframeHighlighted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
			bool Highlighted() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool Highlighted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	struct TerrainDecoLayer
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainDecoLayer")); }
		@property final auto ref
		{
			ScriptArray!(Terrain.TerrainDecoration) Decorations() { return *cast(ScriptArray!(Terrain.TerrainDecoration)*)(cast(size_t)&this + 12); }
			int AlphaMapIndex() { return *cast(int*)(cast(size_t)&this + 24); }
			ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct AlphaMap
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.AlphaMap")); }
	}
	struct TerrainWeightedMaterial
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainWeightedMaterial")); }
	}
	struct SelectedTerrainVertex
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.SelectedTerrainVertex")); }
		@property final auto ref
		{
			int Weight() { return *cast(int*)(cast(size_t)&this + 8); }
			int Y() { return *cast(int*)(cast(size_t)&this + 4); }
			int X() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct TerrainDecorationInstance
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainDecorationInstance")); }
		@property final auto ref
		{
			int Yaw() { return *cast(int*)(cast(size_t)&this + 16); }
			float Scale() { return *cast(float*)(cast(size_t)&this + 12); }
			float Y() { return *cast(float*)(cast(size_t)&this + 8); }
			float X() { return *cast(float*)(cast(size_t)&this + 4); }
		}
	}
	struct TerrainDecoration
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainDecoration")); }
		@property final auto ref
		{
			ScriptArray!(Terrain.TerrainDecorationInstance) Instances() { return *cast(ScriptArray!(Terrain.TerrainDecorationInstance)*)(cast(size_t)&this + 24); }
			int RandSeed() { return *cast(int*)(cast(size_t)&this + 20); }
			float SlopeRotationBlend() { return *cast(float*)(cast(size_t)&this + 16); }
			float Density() { return *cast(float*)(cast(size_t)&this + 12); }
			float MaxScale() { return *cast(float*)(cast(size_t)&this + 8); }
			float MinScale() { return *cast(float*)(cast(size_t)&this + 4); }
			// WARNING: Property 'Factory' has the same name as a defined type!
		}
	}
	struct TerrainMaterialResource
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.TerrainMaterialResource")); }
	}
	struct CachedTerrainMaterialArray
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Terrain.CachedTerrainMaterialArray")); }
		@property final auto ref ScriptArray!(UObject.Pointer) CachedMaterials() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Terrain.TerrainHeight) Heights() { return *cast(ScriptArray!(Terrain.TerrainHeight)*)(cast(size_t)cast(void*)this + 476); }
			ScriptArray!(Terrain.TerrainInfoData) InfoData() { return *cast(ScriptArray!(Terrain.TerrainInfoData)*)(cast(size_t)cast(void*)this + 488); }
			ScriptArray!(Terrain.TerrainLayer) Layers() { return *cast(ScriptArray!(Terrain.TerrainLayer)*)(cast(size_t)cast(void*)this + 500); }
			ScriptArray!(Terrain.TerrainDecoLayer) DecoLayers() { return *cast(ScriptArray!(Terrain.TerrainDecoLayer)*)(cast(size_t)cast(void*)this + 516); }
			ScriptArray!(Terrain.AlphaMap) AlphaMaps() { return *cast(ScriptArray!(Terrain.AlphaMap)*)(cast(size_t)cast(void*)this + 528); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) TerrainComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 540); }
			ScriptArray!(Terrain.TerrainWeightedMaterial) WeightedMaterials() { return *cast(ScriptArray!(Terrain.TerrainWeightedMaterial)*)(cast(size_t)cast(void*)this + 560); }
			ScriptArray!(TerrainWeightMapTexture) WeightedTextureMaps() { return *cast(ScriptArray!(TerrainWeightMapTexture)*)(cast(size_t)cast(void*)this + 572); }
			ScriptArray!(Terrain.SelectedTerrainVertex) SelectedVertices() { return *cast(ScriptArray!(Terrain.SelectedTerrainVertex)*)(cast(size_t)cast(void*)this + 700); }
			UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 716); }
			UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 712); }
			int EditorTessellationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 696); }
			UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
			EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 664); }
			LightComponent.LightingChannelContainer LightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 660); }
			PhysicalMaterial TerrainPhysMaterialOverride() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 656); }
			int StaticLightingResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 648); }
			int MaxComponentSize() { return *cast(int*)(cast(size_t)cast(void*)this + 644); }
			int NumPatchesY() { return *cast(int*)(cast(size_t)cast(void*)this + 640); }
			int NumPatchesX() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
			int NumVerticesY() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
			int NumVerticesX() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
			Terrain.CachedTerrainMaterialArray CachedTerrainMaterials() { return *cast(Terrain.CachedTerrainMaterialArray*)(cast(size_t)cast(void*)this + 604); }
			int CollisionTesselationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
			float TessellationCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			float TesselationDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			int MinTessellationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
			int MaxTesselationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
			int NumSectionsY() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
			int NumSectionsX() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
			int NormalMapLayer() { return *cast(int*)(cast(size_t)cast(void*)this + 512); }
		}
		bool bShowWireframe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x8000) != 0; }
		bool bShowWireframe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x8000; } return val; }
		bool bUseWorldOriginTextureUVs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x4000) != 0; }
		bool bUseWorldOriginTextureUVs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x4000; } return val; }
		bool bShowingCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2000) != 0; }
		bool bShowingCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2000; } return val; }
		bool bHeightmapLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1000) != 0; }
		bool bHeightmapLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1000; } return val; }
		bool bLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x800) != 0; }
		bool bLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x800; } return val; }
		bool bMorphingGradientsEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x400) != 0; }
		bool bMorphingGradientsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x400; } return val; }
		bool bMorphingEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x200) != 0; }
		bool bMorphingEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x200; } return val; }
		bool bAcceptsDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x100) != 0; }
		bool bAcceptsDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x100; } return val; }
		bool bAllowRigidBodyUnderneath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x80) != 0; }
		bool bAllowRigidBodyUnderneath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x80; } return val; }
		bool bBlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x40) != 0; }
		bool bBlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x40; } return val; }
		bool bEnableSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x20) != 0; }
		bool bEnableSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x20; } return val; }
		bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x10) != 0; }
		bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x10; } return val; }
		bool bForceDirectLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x8) != 0; }
		bool bForceDirectLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x8; } return val; }
		bool bCastShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x4) != 0; }
		bool bCastShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x4; } return val; }
		bool bBilinearFilterLightmapGeneration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2) != 0; }
		bool bBilinearFilterLightmapGeneration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2; } return val; }
		bool bIsOverridingLightResolution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
		bool bIsOverridingLightResolution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
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

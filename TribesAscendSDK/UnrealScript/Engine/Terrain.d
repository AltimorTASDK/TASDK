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
	struct TerrainHeight
	{
	}
	struct TerrainInfoData
	{
	}
	struct TerrainLayer
	{
		public @property final auto ref int MaxY() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __MaxY[4];
		public @property final auto ref int MaxX() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __MaxX[4];
		public @property final auto ref int MinY() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __MinY[4];
		public @property final auto ref int MinX() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __MinX[4];
		public @property final auto ref UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)&this + 28); }
		private ubyte __WireframeColor[4];
		public @property final auto ref UObject.Color HighlightColor() { return *cast(UObject.Color*)(cast(size_t)&this + 24); }
		private ubyte __HighlightColor[4];
		public @property final bool Hidden() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x4) != 0; }
		public @property final bool Hidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x4; } return val; }
		private ubyte __Hidden[4];
		public @property final bool WireframeHighlighted() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
		public @property final bool WireframeHighlighted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
		private ubyte __WireframeHighlighted[4];
		public @property final bool Highlighted() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool Highlighted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __Highlighted[4];
		public @property final auto ref int AlphaMapIndex() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __AlphaMapIndex[4];
		public @property final auto ref TerrainLayerSetup Setup() { return *cast(TerrainLayerSetup*)(cast(size_t)&this + 12); }
		private ubyte __Setup[4];
		public @property final auto ref ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Name[12];
	}
	struct TerrainDecoLayer
	{
		public @property final auto ref ScriptArray!(Terrain.TerrainDecoration) Decorations() { return *cast(ScriptArray!(Terrain.TerrainDecoration)*)(cast(size_t)&this + 12); }
		private ubyte __Decorations[12];
		public @property final auto ref int AlphaMapIndex() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __AlphaMapIndex[4];
		public @property final auto ref ScriptString Name() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Name[12];
	}
	struct AlphaMap
	{
	}
	struct TerrainWeightedMaterial
	{
	}
	struct SelectedTerrainVertex
	{
		public @property final auto ref int Weight() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Weight[4];
		public @property final auto ref int Y() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Y[4];
		public @property final auto ref int X() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __X[4];
	}
	struct TerrainDecorationInstance
	{
		public @property final auto ref int Yaw() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Yaw[4];
		public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Scale[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Y[4];
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __X[4];
	}
	struct TerrainDecoration
	{
		public @property final auto ref ScriptArray!(Terrain.TerrainDecorationInstance) Instances() { return *cast(ScriptArray!(Terrain.TerrainDecorationInstance)*)(cast(size_t)&this + 24); }
		private ubyte __Instances[12];
		public @property final auto ref int RandSeed() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __RandSeed[4];
		public @property final auto ref float SlopeRotationBlend() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __SlopeRotationBlend[4];
		public @property final auto ref float Density() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Density[4];
		public @property final auto ref float MaxScale() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __MaxScale[4];
		public @property final auto ref float MinScale() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __MinScale[4];
		// WARNING: Property 'Factory' has the same name as a defined type!
	}
	struct TerrainMaterialResource
	{
	}
	struct CachedTerrainMaterialArray
	{
		public @property final auto ref ScriptArray!(UObject.Pointer) CachedMaterials() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)&this + 0); }
		private ubyte __CachedMaterials[12];
	}
	public @property final auto ref ScriptArray!(Terrain.TerrainHeight) Heights() { return *cast(ScriptArray!(Terrain.TerrainHeight)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref ScriptArray!(Terrain.TerrainInfoData) InfoData() { return *cast(ScriptArray!(Terrain.TerrainInfoData)*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptArray!(Terrain.TerrainLayer) Layers() { return *cast(ScriptArray!(Terrain.TerrainLayer)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(Terrain.TerrainDecoLayer) DecoLayers() { return *cast(ScriptArray!(Terrain.TerrainDecoLayer)*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref ScriptArray!(Terrain.AlphaMap) AlphaMaps() { return *cast(ScriptArray!(Terrain.AlphaMap)*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) TerrainComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref ScriptArray!(Terrain.TerrainWeightedMaterial) WeightedMaterials() { return *cast(ScriptArray!(Terrain.TerrainWeightedMaterial)*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref ScriptArray!(TerrainWeightMapTexture) WeightedTextureMaps() { return *cast(ScriptArray!(TerrainWeightMapTexture)*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref ScriptArray!(Terrain.SelectedTerrainVertex) SelectedVertices() { return *cast(ScriptArray!(Terrain.SelectedTerrainVertex)*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref int EditorTessellationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref LightComponent.LightingChannelContainer LightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref PhysicalMaterial TerrainPhysMaterialOverride() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 656); }
	public @property final bool bShowWireframe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x8000) != 0; }
	public @property final bool bShowWireframe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x8000; } return val; }
	public @property final bool bUseWorldOriginTextureUVs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x4000) != 0; }
	public @property final bool bUseWorldOriginTextureUVs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x4000; } return val; }
	public @property final bool bShowingCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2000) != 0; }
	public @property final bool bShowingCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2000; } return val; }
	public @property final bool bHeightmapLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1000) != 0; }
	public @property final bool bHeightmapLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1000; } return val; }
	public @property final bool bLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x800) != 0; }
	public @property final bool bLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x800; } return val; }
	public @property final bool bMorphingGradientsEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x400) != 0; }
	public @property final bool bMorphingGradientsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x400; } return val; }
	public @property final bool bMorphingEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x200) != 0; }
	public @property final bool bMorphingEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x200; } return val; }
	public @property final bool bAcceptsDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x100) != 0; }
	public @property final bool bAcceptsDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x100; } return val; }
	public @property final bool bAllowRigidBodyUnderneath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x80) != 0; }
	public @property final bool bAllowRigidBodyUnderneath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x80; } return val; }
	public @property final bool bBlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x40) != 0; }
	public @property final bool bBlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x40; } return val; }
	public @property final bool bEnableSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x20) != 0; }
	public @property final bool bEnableSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x20; } return val; }
	public @property final bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x10) != 0; }
	public @property final bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x10; } return val; }
	public @property final bool bForceDirectLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x8) != 0; }
	public @property final bool bForceDirectLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x8; } return val; }
	public @property final bool bCastShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x4) != 0; }
	public @property final bool bCastShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x4; } return val; }
	public @property final bool bBilinearFilterLightmapGeneration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2) != 0; }
	public @property final bool bBilinearFilterLightmapGeneration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2; } return val; }
	public @property final bool bIsOverridingLightResolution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
	public @property final bool bIsOverridingLightResolution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
	public @property final auto ref int StaticLightingResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref int MaxComponentSize() { return *cast(int*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref int NumPatchesY() { return *cast(int*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref int NumPatchesX() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref int NumVerticesY() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref int NumVerticesX() { return *cast(int*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref Terrain.CachedTerrainMaterialArray CachedTerrainMaterials() { return *cast(Terrain.CachedTerrainMaterialArray*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref int CollisionTesselationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float TessellationCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float TesselationDistanceScale() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref int MinTessellationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref int MaxTesselationLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref int NumSectionsY() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref int NumSectionsX() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref int NormalMapLayer() { return *cast(int*)(cast(size_t)cast(void*)this + 512); }
	final void CalcLayerBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27865], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27866], cast(void*)0, cast(void*)0);
	}
}

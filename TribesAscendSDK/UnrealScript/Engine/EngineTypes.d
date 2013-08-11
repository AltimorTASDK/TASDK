module UnrealScript.Engine.EngineTypes;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface EngineTypes : UObject
{
	enum EPathFindingError : ubyte
	{
		PATHERROR_STARTPOLYNOTFOUND = 0,
		PATHERROR_GOALPOLYNOTFOUND = 1,
		PATHERROR_ANCHORPYLONNOTFOUND = 2,
		PATHERROR_NOPATHFOUND = 3,
		PATHERROR_MAX = 4,
	}
	enum EBlendMode : ubyte
	{
		BLEND_Opaque = 0,
		BLEND_Masked = 1,
		BLEND_Translucent = 2,
		BLEND_Additive = 3,
		BLEND_Modulate = 4,
		BLEND_SoftMasked = 5,
		BLEND_AlphaComposite = 6,
		BLEND_DitheredTranslucent = 7,
		BLEND_MAX = 8,
	}
	enum EMaterialLightingModel : ubyte
	{
		MLM_Phong = 0,
		MLM_NonDirectional = 1,
		MLM_Unlit = 2,
		MLM_SHPRT = 3,
		MLM_Custom = 4,
		MLM_Anisotropic = 5,
		MLM_MAX = 6,
	}
	enum EMaterialTessellationMode : ubyte
	{
		MTM_NoTessellation = 0,
		MTM_FlatTessellation = 1,
		MTM_PNTriangles = 2,
		MTM_MAX = 3,
	}
	enum EMobileTextureTransformTarget : ubyte
	{
		MTTT_BaseTexture = 0,
		MTTT_DetailTexture = 1,
		MTTT_MAX = 2,
	}
	enum EMobileValueSource : ubyte
	{
		MVS_Constant = 0,
		MVS_VertexColorRed = 1,
		MVS_VertexColorGreen = 2,
		MVS_VertexColorBlue = 3,
		MVS_VertexColorAlpha = 4,
		MVS_BaseTextureRed = 5,
		MVS_BaseTextureGreen = 6,
		MVS_BaseTextureBlue = 7,
		MVS_BaseTextureAlpha = 8,
		MVS_MaskTextureRed = 9,
		MVS_MaskTextureGreen = 10,
		MVS_MaskTextureBlue = 11,
		MVS_MaskTextureAlpha = 12,
		MVS_NormalTextureAlpha = 13,
		MVS_MAX = 14,
	}
	enum EMobileTextureBlendFactorSource : ubyte
	{
		MTBFS_VertexColor = 0,
		MTBFS_MaskTexture = 1,
		MTBFS_MAX = 2,
	}
	enum EMobileTexCoordsSource : ubyte
	{
		MTCS_TexCoords0 = 0,
		MTCS_TexCoords1 = 1,
		MTCS_TexCoords2 = 2,
		MTCS_TexCoords3 = 3,
		MTCS_MAX = 4,
	}
	enum EMobileEmissiveColorSource : ubyte
	{
		MECS_EmissiveTexture = 0,
		MECS_BaseTexture = 1,
		MECS_Constant = 2,
		MECS_MAX = 3,
	}
	enum EMobileEnvironmentBlendMode : ubyte
	{
		MEBM_Add = 0,
		MEBM_Lerp = 1,
		MEBM_MAX = 2,
	}
	enum EMobileSpecularMask : ubyte
	{
		MSM_Constant = 0,
		MSM_Luminance = 1,
		MSM_DiffuseRed = 2,
		MSM_DiffuseGreen = 3,
		MSM_DiffuseBlue = 4,
		MSM_DiffuseAlpha = 5,
		MSM_MaskTextureRGB = 6,
		MSM_MAX = 7,
	}
	enum EMobileAmbientOcclusionSource : ubyte
	{
		MAOS_Disabled = 0,
		MAOS_VertexColorRed = 1,
		MAOS_VertexColorGreen = 2,
		MAOS_VertexColorBlue = 3,
		MAOS_VertexColorAlpha = 4,
		MAOS_MAX = 5,
	}
	enum ELightingBuildQuality : ubyte
	{
		Quality_Preview = 0,
		Quality_Medium = 1,
		Quality_High = 2,
		Quality_Production = 3,
		Quality_NoGlobalIllumination = 4,
		Quality_MAX = 5,
	}
	struct SubtitleCue
	{
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Time[4];
		public @property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Text[12];
	}
	struct LocalizedSubtitle
	{
		public @property final auto ref ScriptArray!(EngineTypes.SubtitleCue) Subtitles() { return *cast(ScriptArray!(EngineTypes.SubtitleCue)*)(cast(size_t)&this + 12); }
		private ubyte __Subtitles[12];
		public @property final bool bManualWordWrap() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bManualWordWrap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bManualWordWrap[4];
		public @property final bool bMature() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bMature(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bMature[4];
		public @property final auto ref ScriptString LanguageExt() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __LanguageExt[12];
	}
	struct LightMapRef
	{
		public @property final auto ref UObject.Pointer Reference() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Reference[4];
	}
	struct DominantShadowInfo
	{
		public @property final auto ref int ShadowMapSizeY() { return *cast(int*)(cast(size_t)&this + 160); }
		private ubyte __ShadowMapSizeY[4];
		public @property final auto ref int ShadowMapSizeX() { return *cast(int*)(cast(size_t)&this + 156); }
		private ubyte __ShadowMapSizeX[4];
		public @property final auto ref UObject.Box LightSpaceImportanceBounds() { return *cast(UObject.Box*)(cast(size_t)&this + 128); }
		private ubyte __LightSpaceImportanceBounds[28];
		public @property final auto ref UObject.Matrix LightToWorld() { return *cast(UObject.Matrix*)(cast(size_t)&this + 64); }
		private ubyte __LightToWorld[64];
		public @property final auto ref UObject.Matrix WorldToLight() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		private ubyte __WorldToLight[64];
	}
	struct LightmassLightSettings
	{
		public @property final auto ref float ShadowExponent() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ShadowExponent[4];
		public @property final auto ref float IndirectLightingSaturation() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __IndirectLightingSaturation[4];
		public @property final auto ref float IndirectLightingScale() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __IndirectLightingScale[4];
	}
	struct LightmassPointLightSettings
	{
		public @property final auto ref float ShadowExponent() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ShadowExponent[4];
		public @property final auto ref float IndirectLightingSaturation() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __IndirectLightingSaturation[4];
		public @property final auto ref float IndirectLightingScale() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __IndirectLightingScale[4];
		public @property final auto ref float LightSourceRadius() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __LightSourceRadius[4];
	}
	struct LightmassDirectionalLightSettings
	{
		public @property final auto ref float ShadowExponent() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ShadowExponent[4];
		public @property final auto ref float IndirectLightingSaturation() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __IndirectLightingSaturation[4];
		public @property final auto ref float IndirectLightingScale() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __IndirectLightingScale[4];
		public @property final auto ref float LightSourceAngle() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __LightSourceAngle[4];
	}
	struct LightmassPrimitiveSettings
	{
		public @property final auto ref float FullyOccludedSamplesFraction() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __FullyOccludedSamplesFraction[4];
		public @property final auto ref float SpecularBoost() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __SpecularBoost[4];
		public @property final auto ref float DiffuseBoost() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __DiffuseBoost[4];
		public @property final auto ref float EmissiveBoost() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __EmissiveBoost[4];
		public @property final auto ref float EmissiveLightExplicitInfluenceRadius() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __EmissiveLightExplicitInfluenceRadius[4];
		public @property final auto ref float EmissiveLightFalloffExponent() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __EmissiveLightFalloffExponent[4];
		public @property final bool bUseEmissiveForStaticLighting() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bUseEmissiveForStaticLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bUseEmissiveForStaticLighting[4];
		public @property final bool bShadowIndirectOnly() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bShadowIndirectOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bShadowIndirectOnly[4];
		public @property final bool bUseTwoSidedLighting() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bUseTwoSidedLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bUseTwoSidedLighting[4];
	}
	struct LightmassDebugOptions
	{
		public @property final bool bInitialized() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bInitialized[4];
		public @property final auto ref float ExecutionTimeDivisor() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __ExecutionTimeDivisor[4];
		public @property final bool bColorByExecutionTime() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x800) != 0; }
		public @property final bool bColorByExecutionTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x800; } return val; }
		private ubyte __bColorByExecutionTime[4];
		public @property final bool bColorBordersGreen() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x400) != 0; }
		public @property final bool bColorBordersGreen(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x400; } return val; }
		private ubyte __bColorBordersGreen[4];
		public @property final bool bUseRandomColors() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x200) != 0; }
		public @property final bool bUseRandomColors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x200; } return val; }
		private ubyte __bUseRandomColors[4];
		public @property final bool bOnlyCalcDebugTexelMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x100) != 0; }
		public @property final bool bOnlyCalcDebugTexelMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x100; } return val; }
		private ubyte __bOnlyCalcDebugTexelMappings[4];
		public @property final bool bDebugPaddings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x80) != 0; }
		public @property final bool bDebugPaddings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x80; } return val; }
		private ubyte __bDebugPaddings[4];
		public @property final bool bPadMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x40) != 0; }
		public @property final bool bPadMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x40; } return val; }
		private ubyte __bPadMappings[4];
		public @property final bool bDebugMaterials() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x20) != 0; }
		public @property final bool bDebugMaterials(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x20; } return val; }
		private ubyte __bDebugMaterials[4];
		public @property final bool bDumpBinaryFiles() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x10) != 0; }
		public @property final bool bDumpBinaryFiles(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x10; } return val; }
		private ubyte __bDumpBinaryFiles[4];
		public @property final bool bSortMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x8) != 0; }
		public @property final bool bSortMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x8; } return val; }
		private ubyte __bSortMappings[4];
		public @property final bool bImmediateProcessMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x4) != 0; }
		public @property final bool bImmediateProcessMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x4; } return val; }
		private ubyte __bImmediateProcessMappings[4];
		public @property final bool bUseImmediateImport() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
		public @property final bool bUseImmediateImport(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
		private ubyte __bUseImmediateImport[4];
		public @property final bool bUseDeterministicLighting() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bUseDeterministicLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bUseDeterministicLighting[4];
		public @property final auto ref float CoplanarTolerance() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __CoplanarTolerance[4];
		public @property final bool bGatherBSPSurfacesAcrossComponents() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bGatherBSPSurfacesAcrossComponents(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bGatherBSPSurfacesAcrossComponents[4];
		public @property final bool bStatsEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bStatsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bStatsEnabled[4];
		public @property final bool bDebugMode() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bDebugMode(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bDebugMode[4];
	}
	struct SwarmDebugOptions
	{
		public @property final bool bInitialized() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bInitialized[4];
		public @property final bool bForceContentExport() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bForceContentExport(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bForceContentExport[4];
		public @property final bool bDistributionEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bDistributionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bDistributionEnabled[4];
	}
	struct RootMotionCurve
	{
		public @property final auto ref float MaxCurveTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __MaxCurveTime[4];
		public @property final auto ref UObject.InterpCurveVector Curve() { return *cast(UObject.InterpCurveVector*)(cast(size_t)&this + 8); }
		private ubyte __Curve[16];
		public @property final auto ref ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __AnimName[8];
	}
	struct PrimitiveMaterialRef
	{
		public @property final auto ref int MaterialIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __MaterialIndex[4];
	}
	struct MaterialReferenceList
	{
		public @property final auto ref ScriptArray!(EngineTypes.PrimitiveMaterialRef) AffectedMaterialRefs() { return *cast(ScriptArray!(EngineTypes.PrimitiveMaterialRef)*)(cast(size_t)&this + 4); }
		private ubyte __AffectedMaterialRefs[12];
		public @property final auto ref MaterialInterface TargetMaterial() { return *cast(MaterialInterface*)(cast(size_t)&this + 0); }
		private ubyte __TargetMaterial[4];
	}
}

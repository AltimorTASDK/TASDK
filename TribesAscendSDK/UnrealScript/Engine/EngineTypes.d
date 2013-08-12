module UnrealScript.Engine.EngineTypes;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface EngineTypes : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.EngineTypes")); }
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
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.SubtitleCue")); }
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 12); }
			ScriptString Text() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct LocalizedSubtitle
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LocalizedSubtitle")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(EngineTypes.SubtitleCue) Subtitles() { return *cast(ScriptArray!(EngineTypes.SubtitleCue)*)(cast(size_t)&this + 12); }
				ScriptString LanguageExt() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bManualWordWrap() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bManualWordWrap(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bMature() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bMature(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct LightMapRef
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LightMapRef")); }
		@property final auto ref UObject.Pointer Reference() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
	}
	struct DominantShadowInfo
	{
		private ubyte __buffer__[164];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.DominantShadowInfo")); }
		@property final auto ref
		{
			int ShadowMapSizeY() { return *cast(int*)(cast(size_t)&this + 160); }
			int ShadowMapSizeX() { return *cast(int*)(cast(size_t)&this + 156); }
			UObject.Box LightSpaceImportanceBounds() { return *cast(UObject.Box*)(cast(size_t)&this + 128); }
			UObject.Matrix LightToWorld() { return *cast(UObject.Matrix*)(cast(size_t)&this + 64); }
			UObject.Matrix WorldToLight() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		}
	}
	struct LightmassLightSettings
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LightmassLightSettings")); }
		@property final auto ref
		{
			float ShadowExponent() { return *cast(float*)(cast(size_t)&this + 8); }
			float IndirectLightingSaturation() { return *cast(float*)(cast(size_t)&this + 4); }
			float IndirectLightingScale() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct LightmassPointLightSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LightmassPointLightSettings")); }
		@property final auto ref
		{
			float ShadowExponent() { return *cast(float*)(cast(size_t)&this + 8); }
			float IndirectLightingSaturation() { return *cast(float*)(cast(size_t)&this + 4); }
			float IndirectLightingScale() { return *cast(float*)(cast(size_t)&this + 0); }
		}
		@property final auto ref float LightSourceRadius() { return *cast(float*)(cast(size_t)&this + 12); }
	}
	struct LightmassDirectionalLightSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LightmassDirectionalLightSettings")); }
		@property final auto ref
		{
			float ShadowExponent() { return *cast(float*)(cast(size_t)&this + 8); }
			float IndirectLightingSaturation() { return *cast(float*)(cast(size_t)&this + 4); }
			float IndirectLightingScale() { return *cast(float*)(cast(size_t)&this + 0); }
		}
		@property final auto ref float LightSourceAngle() { return *cast(float*)(cast(size_t)&this + 12); }
	}
	struct LightmassPrimitiveSettings
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LightmassPrimitiveSettings")); }
		@property final
		{
			auto ref
			{
				float FullyOccludedSamplesFraction() { return *cast(float*)(cast(size_t)&this + 24); }
				float SpecularBoost() { return *cast(float*)(cast(size_t)&this + 20); }
				float DiffuseBoost() { return *cast(float*)(cast(size_t)&this + 16); }
				float EmissiveBoost() { return *cast(float*)(cast(size_t)&this + 12); }
				float EmissiveLightExplicitInfluenceRadius() { return *cast(float*)(cast(size_t)&this + 8); }
				float EmissiveLightFalloffExponent() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bUseEmissiveForStaticLighting() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bUseEmissiveForStaticLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bShadowIndirectOnly() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bShadowIndirectOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bUseTwoSidedLighting() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bUseTwoSidedLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct LightmassDebugOptions
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.LightmassDebugOptions")); }
		@property final
		{
			auto ref
			{
				float ExecutionTimeDivisor() { return *cast(float*)(cast(size_t)&this + 12); }
				float CoplanarTolerance() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bInitialized() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
			bool bColorByExecutionTime() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x800) != 0; }
			bool bColorByExecutionTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x800; } return val; }
			bool bColorBordersGreen() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x400) != 0; }
			bool bColorBordersGreen(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x400; } return val; }
			bool bUseRandomColors() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x200) != 0; }
			bool bUseRandomColors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x200; } return val; }
			bool bOnlyCalcDebugTexelMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x100) != 0; }
			bool bOnlyCalcDebugTexelMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x100; } return val; }
			bool bDebugPaddings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x80) != 0; }
			bool bDebugPaddings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x80; } return val; }
			bool bPadMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x40) != 0; }
			bool bPadMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x40; } return val; }
			bool bDebugMaterials() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x20) != 0; }
			bool bDebugMaterials(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x20; } return val; }
			bool bDumpBinaryFiles() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x10) != 0; }
			bool bDumpBinaryFiles(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x10; } return val; }
			bool bSortMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x8) != 0; }
			bool bSortMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x8; } return val; }
			bool bImmediateProcessMappings() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x4) != 0; }
			bool bImmediateProcessMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x4; } return val; }
			bool bUseImmediateImport() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
			bool bUseImmediateImport(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
			bool bUseDeterministicLighting() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bUseDeterministicLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
			bool bGatherBSPSurfacesAcrossComponents() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bGatherBSPSurfacesAcrossComponents(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bStatsEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bStatsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bDebugMode() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDebugMode(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct SwarmDebugOptions
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.SwarmDebugOptions")); }
		@property final
		{
			bool bInitialized() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bForceContentExport() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bForceContentExport(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bDistributionEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDistributionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct RootMotionCurve
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.RootMotionCurve")); }
		@property final auto ref
		{
			float MaxCurveTime() { return *cast(float*)(cast(size_t)&this + 24); }
			UObject.InterpCurveVector Curve() { return *cast(UObject.InterpCurveVector*)(cast(size_t)&this + 8); }
			ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PrimitiveMaterialRef
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.PrimitiveMaterialRef")); }
		@property final auto ref int MaterialIndex() { return *cast(int*)(cast(size_t)&this + 4); }
	}
	struct MaterialReferenceList
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.EngineTypes.MaterialReferenceList")); }
		@property final auto ref
		{
			ScriptArray!(EngineTypes.PrimitiveMaterialRef) AffectedMaterialRefs() { return *cast(ScriptArray!(EngineTypes.PrimitiveMaterialRef)*)(cast(size_t)&this + 4); }
			MaterialInterface TargetMaterial() { return *cast(MaterialInterface*)(cast(size_t)&this + 0); }
		}
	}
}

module UnrealScript.Engine.EngineTypes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface EngineTypes : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.EngineTypes")); }
	private static __gshared EngineTypes mDefaultProperties;
	@property final static EngineTypes DefaultProperties() { mixin(MGDPC("EngineTypes", "EngineTypes Engine.Default__EngineTypes")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.SubtitleCue")); }
		@property final auto ref
		{
			float Time() { mixin(MGPS("float", 12)); }
			ScriptString Text() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct LocalizedSubtitle
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LocalizedSubtitle")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(EngineTypes.SubtitleCue) Subtitles() { mixin(MGPS("ScriptArray!(EngineTypes.SubtitleCue)", 12)); }
				ScriptString LanguageExt() { mixin(MGPS("ScriptString", 0)); }
			}
			bool bManualWordWrap() { mixin(MGBPS(24, 0x2)); }
			bool bManualWordWrap(bool val) { mixin(MSBPS(24, 0x2)); }
			bool bMature() { mixin(MGBPS(24, 0x1)); }
			bool bMature(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	struct LightMapRef
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LightMapRef")); }
		@property final auto ref Pointer Reference() { mixin(MGPS("Pointer", 0)); }
	}
	struct DominantShadowInfo
	{
		private ubyte __buffer__[164];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.DominantShadowInfo")); }
		@property final auto ref
		{
			int ShadowMapSizeY() { mixin(MGPS("int", 160)); }
			int ShadowMapSizeX() { mixin(MGPS("int", 156)); }
			UObject.Box LightSpaceImportanceBounds() { mixin(MGPS("UObject.Box", 128)); }
			UObject.Matrix LightToWorld() { mixin(MGPS("UObject.Matrix", 64)); }
			UObject.Matrix WorldToLight() { mixin(MGPS("UObject.Matrix", 0)); }
		}
	}
	struct LightmassLightSettings
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LightmassLightSettings")); }
		@property final auto ref
		{
			float ShadowExponent() { mixin(MGPS("float", 8)); }
			float IndirectLightingSaturation() { mixin(MGPS("float", 4)); }
			float IndirectLightingScale() { mixin(MGPS("float", 0)); }
		}
	}
	struct LightmassPointLightSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LightmassPointLightSettings")); }
		@property final auto ref
		{
			float ShadowExponent() { mixin(MGPS("float", 8)); }
			float IndirectLightingSaturation() { mixin(MGPS("float", 4)); }
			float IndirectLightingScale() { mixin(MGPS("float", 0)); }
		}
		@property final auto ref float LightSourceRadius() { mixin(MGPS("float", 12)); }
	}
	struct LightmassDirectionalLightSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LightmassDirectionalLightSettings")); }
		@property final auto ref
		{
			float ShadowExponent() { mixin(MGPS("float", 8)); }
			float IndirectLightingSaturation() { mixin(MGPS("float", 4)); }
			float IndirectLightingScale() { mixin(MGPS("float", 0)); }
		}
		@property final auto ref float LightSourceAngle() { mixin(MGPS("float", 12)); }
	}
	struct LightmassPrimitiveSettings
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LightmassPrimitiveSettings")); }
		@property final
		{
			auto ref
			{
				float FullyOccludedSamplesFraction() { mixin(MGPS("float", 24)); }
				float SpecularBoost() { mixin(MGPS("float", 20)); }
				float DiffuseBoost() { mixin(MGPS("float", 16)); }
				float EmissiveBoost() { mixin(MGPS("float", 12)); }
				float EmissiveLightExplicitInfluenceRadius() { mixin(MGPS("float", 8)); }
				float EmissiveLightFalloffExponent() { mixin(MGPS("float", 4)); }
			}
			bool bUseEmissiveForStaticLighting() { mixin(MGBPS(0, 0x4)); }
			bool bUseEmissiveForStaticLighting(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bShadowIndirectOnly() { mixin(MGBPS(0, 0x2)); }
			bool bShadowIndirectOnly(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bUseTwoSidedLighting() { mixin(MGBPS(0, 0x1)); }
			bool bUseTwoSidedLighting(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	struct LightmassDebugOptions
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.LightmassDebugOptions")); }
		@property final
		{
			auto ref
			{
				float ExecutionTimeDivisor() { mixin(MGPS("float", 12)); }
				float CoplanarTolerance() { mixin(MGPS("float", 4)); }
			}
			bool bInitialized() { mixin(MGBPS(16, 0x1)); }
			bool bInitialized(bool val) { mixin(MSBPS(16, 0x1)); }
			bool bColorByExecutionTime() { mixin(MGBPS(8, 0x800)); }
			bool bColorByExecutionTime(bool val) { mixin(MSBPS(8, 0x800)); }
			bool bColorBordersGreen() { mixin(MGBPS(8, 0x400)); }
			bool bColorBordersGreen(bool val) { mixin(MSBPS(8, 0x400)); }
			bool bUseRandomColors() { mixin(MGBPS(8, 0x200)); }
			bool bUseRandomColors(bool val) { mixin(MSBPS(8, 0x200)); }
			bool bOnlyCalcDebugTexelMappings() { mixin(MGBPS(8, 0x100)); }
			bool bOnlyCalcDebugTexelMappings(bool val) { mixin(MSBPS(8, 0x100)); }
			bool bDebugPaddings() { mixin(MGBPS(8, 0x80)); }
			bool bDebugPaddings(bool val) { mixin(MSBPS(8, 0x80)); }
			bool bPadMappings() { mixin(MGBPS(8, 0x40)); }
			bool bPadMappings(bool val) { mixin(MSBPS(8, 0x40)); }
			bool bDebugMaterials() { mixin(MGBPS(8, 0x20)); }
			bool bDebugMaterials(bool val) { mixin(MSBPS(8, 0x20)); }
			bool bDumpBinaryFiles() { mixin(MGBPS(8, 0x10)); }
			bool bDumpBinaryFiles(bool val) { mixin(MSBPS(8, 0x10)); }
			bool bSortMappings() { mixin(MGBPS(8, 0x8)); }
			bool bSortMappings(bool val) { mixin(MSBPS(8, 0x8)); }
			bool bImmediateProcessMappings() { mixin(MGBPS(8, 0x4)); }
			bool bImmediateProcessMappings(bool val) { mixin(MSBPS(8, 0x4)); }
			bool bUseImmediateImport() { mixin(MGBPS(8, 0x2)); }
			bool bUseImmediateImport(bool val) { mixin(MSBPS(8, 0x2)); }
			bool bUseDeterministicLighting() { mixin(MGBPS(8, 0x1)); }
			bool bUseDeterministicLighting(bool val) { mixin(MSBPS(8, 0x1)); }
			bool bGatherBSPSurfacesAcrossComponents() { mixin(MGBPS(0, 0x4)); }
			bool bGatherBSPSurfacesAcrossComponents(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bStatsEnabled() { mixin(MGBPS(0, 0x2)); }
			bool bStatsEnabled(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bDebugMode() { mixin(MGBPS(0, 0x1)); }
			bool bDebugMode(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	struct SwarmDebugOptions
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.SwarmDebugOptions")); }
		@property final
		{
			bool bInitialized() { mixin(MGBPS(0, 0x4)); }
			bool bInitialized(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bForceContentExport() { mixin(MGBPS(0, 0x2)); }
			bool bForceContentExport(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bDistributionEnabled() { mixin(MGBPS(0, 0x1)); }
			bool bDistributionEnabled(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	struct RootMotionCurve
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.RootMotionCurve")); }
		@property final auto ref
		{
			float MaxCurveTime() { mixin(MGPS("float", 24)); }
			UObject.InterpCurveVector Curve() { mixin(MGPS("UObject.InterpCurveVector", 8)); }
			ScriptName AnimName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct PrimitiveMaterialRef
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.PrimitiveMaterialRef")); }
		@property final auto ref
		{
			int MaterialIndex() { mixin(MGPS("int", 4)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Primitive'!
		}
	}
	struct MaterialReferenceList
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.EngineTypes.MaterialReferenceList")); }
		@property final auto ref
		{
			ScriptArray!(EngineTypes.PrimitiveMaterialRef) AffectedMaterialRefs() { mixin(MGPS("ScriptArray!(EngineTypes.PrimitiveMaterialRef)", 4)); }
			MaterialInterface TargetMaterial() { mixin(MGPS("MaterialInterface", 0)); }
		}
	}
}

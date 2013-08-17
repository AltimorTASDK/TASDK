module UnrealScript.Engine.MaterialInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Surface;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.Font;

extern(C++) interface MaterialInterface : Surface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialInterface")()); }
	private static __gshared MaterialInterface mDefaultProperties;
	@property final static MaterialInterface DefaultProperties() { mixin(MGDPC!(MaterialInterface, "MaterialInterface Engine.Default__MaterialInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetMaterial;
			ScriptFunction mGetPhysicalMaterial;
			ScriptFunction mGetParameterDesc;
			ScriptFunction mGetFontParameterValue;
			ScriptFunction mGetScalarParameterValue;
			ScriptFunction mGetScalarCurveParameterValue;
			ScriptFunction mGetTextureParameterValue;
			ScriptFunction mGetVectorParameterValue;
			ScriptFunction mGetVectorCurveParameterValue;
			ScriptFunction mSetForceMipLevelsToBeResident;
		}
		public @property static final
		{
			ScriptFunction GetMaterial() { mixin(MGF!("mGetMaterial", "Function Engine.MaterialInterface.GetMaterial")()); }
			ScriptFunction GetPhysicalMaterial() { mixin(MGF!("mGetPhysicalMaterial", "Function Engine.MaterialInterface.GetPhysicalMaterial")()); }
			ScriptFunction GetParameterDesc() { mixin(MGF!("mGetParameterDesc", "Function Engine.MaterialInterface.GetParameterDesc")()); }
			ScriptFunction GetFontParameterValue() { mixin(MGF!("mGetFontParameterValue", "Function Engine.MaterialInterface.GetFontParameterValue")()); }
			ScriptFunction GetScalarParameterValue() { mixin(MGF!("mGetScalarParameterValue", "Function Engine.MaterialInterface.GetScalarParameterValue")()); }
			ScriptFunction GetScalarCurveParameterValue() { mixin(MGF!("mGetScalarCurveParameterValue", "Function Engine.MaterialInterface.GetScalarCurveParameterValue")()); }
			ScriptFunction GetTextureParameterValue() { mixin(MGF!("mGetTextureParameterValue", "Function Engine.MaterialInterface.GetTextureParameterValue")()); }
			ScriptFunction GetVectorParameterValue() { mixin(MGF!("mGetVectorParameterValue", "Function Engine.MaterialInterface.GetVectorParameterValue")()); }
			ScriptFunction GetVectorCurveParameterValue() { mixin(MGF!("mGetVectorCurveParameterValue", "Function Engine.MaterialInterface.GetVectorCurveParameterValue")()); }
			ScriptFunction SetForceMipLevelsToBeResident() { mixin(MGF!("mSetForceMipLevelsToBeResident", "Function Engine.MaterialInterface.SetForceMipLevelsToBeResident")()); }
		}
	}
	enum EMaterialUsage : ubyte
	{
		MATUSAGE_SkeletalMesh = 0,
		MATUSAGE_FracturedMeshes = 1,
		MATUSAGE_ParticleSprites = 2,
		MATUSAGE_BeamTrails = 3,
		MATUSAGE_ParticleSubUV = 4,
		MATUSAGE_SpeedTree = 5,
		MATUSAGE_StaticLighting = 6,
		MATUSAGE_GammaCorrection = 7,
		MATUSAGE_LensFlare = 8,
		MATUSAGE_InstancedMeshParticles = 9,
		MATUSAGE_FluidSurface = 10,
		MATUSAGE_Decals = 11,
		MATUSAGE_MaterialEffect = 12,
		MATUSAGE_MorphTargets = 13,
		MATUSAGE_FogVolumes = 14,
		MATUSAGE_RadialBlur = 15,
		MATUSAGE_InstancedMeshes = 16,
		MATUSAGE_SplineMesh = 17,
		MATUSAGE_ScreenDoorFade = 18,
		MATUSAGE_APEXMesh = 19,
		MATUSAGE_Terrain = 20,
		MATUSAGE_Landscape = 21,
		MATUSAGE_MAX = 22,
	}
	struct LightmassMaterialInterfaceSettings
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInterface.LightmassMaterialInterfaceSettings")()); }
		@property final
		{
			auto ref
			{
				float DistanceFieldPenumbraScale() { mixin(MGPS!("float", 20)()); }
				float ExportResolutionScale() { mixin(MGPS!("float", 16)()); }
				float SpecularBoost() { mixin(MGPS!("float", 12)()); }
				float DiffuseBoost() { mixin(MGPS!("float", 8)()); }
				float EmissiveBoost() { mixin(MGPS!("float", 4)()); }
			}
			bool bOverrideDistanceFieldPenumbraScale() { mixin(MGBPS!(24, 0x20)()); }
			bool bOverrideDistanceFieldPenumbraScale(bool val) { mixin(MSBPS!(24, 0x20)()); }
			bool bOverrideExportResolutionScale() { mixin(MGBPS!(24, 0x10)()); }
			bool bOverrideExportResolutionScale(bool val) { mixin(MSBPS!(24, 0x10)()); }
			bool bOverrideSpecularBoost() { mixin(MGBPS!(24, 0x8)()); }
			bool bOverrideSpecularBoost(bool val) { mixin(MSBPS!(24, 0x8)()); }
			bool bOverrideDiffuseBoost() { mixin(MGBPS!(24, 0x4)()); }
			bool bOverrideDiffuseBoost(bool val) { mixin(MSBPS!(24, 0x4)()); }
			bool bOverrideEmissiveBoost() { mixin(MGBPS!(24, 0x2)()); }
			bool bOverrideEmissiveBoost(bool val) { mixin(MSBPS!(24, 0x2)()); }
			bool bOverrideCastShadowAsMasked() { mixin(MGBPS!(24, 0x1)()); }
			bool bOverrideCastShadowAsMasked(bool val) { mixin(MSBPS!(24, 0x1)()); }
			bool bCastShadowAsMasked() { mixin(MGBPS!(0, 0x1)()); }
			bool bCastShadowAsMasked(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			float MobileSwayMaxAngle() { mixin(MGPC!("float", 332)()); }
			float MobileSwayFrequencyMultiplier() { mixin(MGPC!("float", 328)()); }
			float MobileMaxVertexMovementAmplitude() { mixin(MGPC!("float", 324)()); }
			float MobileVerticalFrequencyMultiplier() { mixin(MGPC!("float", 320)()); }
			float MobileTangentVertexFrequencyMultiplier() { mixin(MGPC!("float", 316)()); }
			float SineScaleFrequencyMultipler() { mixin(MGPC!("float", 312)()); }
			float SineScaleY() { mixin(MGPC!("float", 308)()); }
			float SineScaleX() { mixin(MGPC!("float", 304)()); }
			float FixedScaleY() { mixin(MGPC!("float", 300)()); }
			float FixedScaleX() { mixin(MGPC!("float", 296)()); }
			float RotateSpeed() { mixin(MGPC!("float", 292)()); }
			float PannerSpeedY() { mixin(MGPC!("float", 288)()); }
			float PannerSpeedX() { mixin(MGPC!("float", 284)()); }
			float TransformCenterY() { mixin(MGPC!("float", 280)()); }
			float TransformCenterX() { mixin(MGPC!("float", 276)()); }
			UObject.LinearColor DefaultUniformColor() { mixin(MGPC!("UObject.LinearColor", 260)()); }
			Texture MobileDetailTexture() { mixin(MGPC!("Texture", 256)()); }
			Texture MobileMaskTexture() { mixin(MGPC!("Texture", 252)()); }
			float MobileBumpOffsetHeightRatio() { mixin(MGPC!("float", 248)()); }
			float MobileBumpOffsetReferencePlane() { mixin(MGPC!("float", 244)()); }
			UObject.LinearColor MobileRimLightingColor() { mixin(MGPC!("UObject.LinearColor", 228)()); }
			float MobileRimLightingExponent() { mixin(MGPC!("float", 224)()); }
			float MobileRimLightingStrength() { mixin(MGPC!("float", 220)()); }
			float MobileEnvironmentFresnelExponent() { mixin(MGPC!("float", 216)()); }
			float MobileEnvironmentFresnelAmount() { mixin(MGPC!("float", 212)()); }
			UObject.LinearColor MobileEnvironmentColor() { mixin(MGPC!("UObject.LinearColor", 196)()); }
			float MobileEnvironmentAmount() { mixin(MGPC!("float", 192)()); }
			Texture MobileEnvironmentTexture() { mixin(MGPC!("Texture", 188)()); }
			UObject.LinearColor MobileEmissiveColor() { mixin(MGPC!("UObject.LinearColor", 172)()); }
			Texture MobileEmissiveTexture() { mixin(MGPC!("Texture", 168)()); }
			float MobileSpecularPower() { mixin(MGPC!("float", 164)()); }
			UObject.LinearColor MobileSpecularColor() { mixin(MGPC!("UObject.LinearColor", 148)()); }
			Texture MobileNormalTexture() { mixin(MGPC!("Texture", 144)()); }
			EngineTypes.EMobileTextureTransformTarget MobileTextureTransformTarget() { mixin(MGPC!("EngineTypes.EMobileTextureTransformTarget", 143)()); }
			EngineTypes.EMobileTextureBlendFactorSource MobileTextureBlendFactorSource() { mixin(MGPC!("EngineTypes.EMobileTextureBlendFactorSource", 142)()); }
			EngineTypes.EMobileTexCoordsSource MobileDetailTextureTexCoordsSource() { mixin(MGPC!("EngineTypes.EMobileTexCoordsSource", 141)()); }
			EngineTypes.EMobileTexCoordsSource MobileMaskTextureTexCoordsSource() { mixin(MGPC!("EngineTypes.EMobileTexCoordsSource", 140)()); }
			EngineTypes.EMobileValueSource MobileRimLightingMaskSource() { mixin(MGPC!("EngineTypes.EMobileValueSource", 139)()); }
			EngineTypes.EMobileEnvironmentBlendMode MobileEnvironmentBlendMode() { mixin(MGPC!("EngineTypes.EMobileEnvironmentBlendMode", 138)()); }
			EngineTypes.EMobileValueSource MobileEnvironmentMaskSource() { mixin(MGPC!("EngineTypes.EMobileValueSource", 137)()); }
			EngineTypes.EMobileValueSource MobileEmissiveMaskSource() { mixin(MGPC!("EngineTypes.EMobileValueSource", 136)()); }
			EngineTypes.EMobileEmissiveColorSource MobileEmissiveColorSource() { mixin(MGPC!("EngineTypes.EMobileEmissiveColorSource", 135)()); }
			EngineTypes.EMobileSpecularMask MobileSpecularMask() { mixin(MGPC!("EngineTypes.EMobileSpecularMask", 134)()); }
			EngineTypes.EMobileAmbientOcclusionSource MobileAmbientOcclusionSource() { mixin(MGPC!("EngineTypes.EMobileAmbientOcclusionSource", 133)()); }
			EngineTypes.EMobileTexCoordsSource MobileBaseTextureTexCoordsSource() { mixin(MGPC!("EngineTypes.EMobileTexCoordsSource", 132)()); }
			Texture FlattenedTexture() { mixin(MGPC!("Texture", 128)()); }
			Texture MobileBaseTexture() { mixin(MGPC!("Texture", 124)()); }
			UObject.Guid LightingGuid() { mixin(MGPC!("UObject.Guid", 104)()); }
			ScriptString PreviewMesh() { mixin(MGPC!("ScriptString", 92)()); }
			MaterialInterface.LightmassMaterialInterfaceSettings LightmassSettings() { mixin(MGPC!("MaterialInterface.LightmassMaterialInterfaceSettings", 64)()); }
			UObject.RenderCommandFence_Mirror ParentRefFence() { mixin(MGPC!("UObject.RenderCommandFence_Mirror", 60)()); }
		}
		bool bUseMobileWaveVertexMovement() { mixin(MGBPC!(120, 0x400)()); }
		bool bUseMobileWaveVertexMovement(bool val) { mixin(MSBPC!(120, 0x400)()); }
		bool bUseMobileTextureTransform() { mixin(MGBPC!(120, 0x200)()); }
		bool bUseMobileTextureTransform(bool val) { mixin(MSBPC!(120, 0x200)()); }
		bool bUseMobileVertexColorMultiply() { mixin(MGBPC!(120, 0x100)()); }
		bool bUseMobileVertexColorMultiply(bool val) { mixin(MSBPC!(120, 0x100)()); }
		bool bUseMobileUniformColorMultiply() { mixin(MGBPC!(120, 0x80)()); }
		bool bUseMobileUniformColorMultiply(bool val) { mixin(MSBPC!(120, 0x80)()); }
		bool bLockColorBlending() { mixin(MGBPC!(120, 0x40)()); }
		bool bLockColorBlending(bool val) { mixin(MSBPC!(120, 0x40)()); }
		bool bUseMobileBumpOffset() { mixin(MGBPC!(120, 0x20)()); }
		bool bUseMobileBumpOffset(bool val) { mixin(MSBPC!(120, 0x20)()); }
		bool bUseMobilePixelSpecular() { mixin(MGBPC!(120, 0x10)()); }
		bool bUseMobilePixelSpecular(bool val) { mixin(MSBPC!(120, 0x10)()); }
		bool bUseMobileVertexSpecular() { mixin(MGBPC!(120, 0x8)()); }
		bool bUseMobileVertexSpecular(bool val) { mixin(MSBPC!(120, 0x8)()); }
		bool bUseMobileSpecular() { mixin(MGBPC!(120, 0x4)()); }
		bool bUseMobileSpecular(bool val) { mixin(MSBPC!(120, 0x4)()); }
		bool bMobileAllowFog() { mixin(MGBPC!(120, 0x2)()); }
		bool bMobileAllowFog(bool val) { mixin(MSBPC!(120, 0x2)()); }
		bool bAutoFlattenMobile() { mixin(MGBPC!(120, 0x1)()); }
		bool bAutoFlattenMobile(bool val) { mixin(MSBPC!(120, 0x1)()); }
	}
final:
	Material GetMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterial, params.ptr, cast(void*)0);
		return *cast(Material*)params.ptr;
	}
	PhysicalMaterial GetPhysicalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalMaterial, params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	bool GetParameterDesc(ScriptName ParameterName, ref ScriptString OutDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(ScriptString*)&params[8] = OutDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetParameterDesc, params.ptr, cast(void*)0);
		OutDesc = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetFontParameterValue(ScriptName ParameterName, ref Font OutFontValue, ref int OutFontPage)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = OutFontValue;
		*cast(int*)&params[12] = OutFontPage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFontParameterValue, params.ptr, cast(void*)0);
		OutFontValue = *cast(Font*)&params[8];
		OutFontPage = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	bool GetScalarParameterValue(ScriptName ParameterName, ref float OutValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScalarParameterValue, params.ptr, cast(void*)0);
		OutValue = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetScalarCurveParameterValue(ScriptName ParameterName, ref UObject.InterpCurveFloat OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScalarCurveParameterValue, params.ptr, cast(void*)0);
		OutValue = *cast(UObject.InterpCurveFloat*)&params[8];
		return *cast(bool*)&params[24];
	}
	bool GetTextureParameterValue(ScriptName ParameterName, ref Texture OutValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTextureParameterValue, params.ptr, cast(void*)0);
		OutValue = *cast(Texture*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVectorParameterValue(ScriptName ParameterName, ref UObject.LinearColor OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorParameterValue, params.ptr, cast(void*)0);
		OutValue = *cast(UObject.LinearColor*)&params[8];
		return *cast(bool*)&params[24];
	}
	bool GetVectorCurveParameterValue(ScriptName ParameterName, ref UObject.InterpCurveVector OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveVector*)&params[8] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorCurveParameterValue, params.ptr, cast(void*)0);
		OutValue = *cast(UObject.InterpCurveVector*)&params[8];
		return *cast(bool*)&params[24];
	}
	void SetForceMipLevelsToBeResident(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float ForceDuration, int* CinematicTextureGroups = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = OverrideForceMiplevelsToBeResident;
		*cast(bool*)&params[4] = bForceMiplevelsToBeResidentValue;
		*cast(float*)&params[8] = ForceDuration;
		if (CinematicTextureGroups !is null)
			*cast(int*)&params[12] = *CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceMipLevelsToBeResident, params.ptr, cast(void*)0);
	}
}

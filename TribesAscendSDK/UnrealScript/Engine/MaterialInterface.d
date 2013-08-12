module UnrealScript.Engine.MaterialInterface;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInterface")); }
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
			ScriptFunction GetMaterial() { return mGetMaterial ? mGetMaterial : (mGetMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetMaterial")); }
			ScriptFunction GetPhysicalMaterial() { return mGetPhysicalMaterial ? mGetPhysicalMaterial : (mGetPhysicalMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetPhysicalMaterial")); }
			ScriptFunction GetParameterDesc() { return mGetParameterDesc ? mGetParameterDesc : (mGetParameterDesc = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetParameterDesc")); }
			ScriptFunction GetFontParameterValue() { return mGetFontParameterValue ? mGetFontParameterValue : (mGetFontParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetFontParameterValue")); }
			ScriptFunction GetScalarParameterValue() { return mGetScalarParameterValue ? mGetScalarParameterValue : (mGetScalarParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetScalarParameterValue")); }
			ScriptFunction GetScalarCurveParameterValue() { return mGetScalarCurveParameterValue ? mGetScalarCurveParameterValue : (mGetScalarCurveParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetScalarCurveParameterValue")); }
			ScriptFunction GetTextureParameterValue() { return mGetTextureParameterValue ? mGetTextureParameterValue : (mGetTextureParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetTextureParameterValue")); }
			ScriptFunction GetVectorParameterValue() { return mGetVectorParameterValue ? mGetVectorParameterValue : (mGetVectorParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetVectorParameterValue")); }
			ScriptFunction GetVectorCurveParameterValue() { return mGetVectorCurveParameterValue ? mGetVectorCurveParameterValue : (mGetVectorCurveParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.GetVectorCurveParameterValue")); }
			ScriptFunction SetForceMipLevelsToBeResident() { return mSetForceMipLevelsToBeResident ? mSetForceMipLevelsToBeResident : (mSetForceMipLevelsToBeResident = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInterface.SetForceMipLevelsToBeResident")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInterface.LightmassMaterialInterfaceSettings")); }
		@property final
		{
			auto ref
			{
				float DistanceFieldPenumbraScale() { return *cast(float*)(cast(size_t)&this + 20); }
				float ExportResolutionScale() { return *cast(float*)(cast(size_t)&this + 16); }
				float SpecularBoost() { return *cast(float*)(cast(size_t)&this + 12); }
				float DiffuseBoost() { return *cast(float*)(cast(size_t)&this + 8); }
				float EmissiveBoost() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bOverrideDistanceFieldPenumbraScale() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x20) != 0; }
			bool bOverrideDistanceFieldPenumbraScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x20; } return val; }
			bool bOverrideExportResolutionScale() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x10) != 0; }
			bool bOverrideExportResolutionScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x10; } return val; }
			bool bOverrideSpecularBoost() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x8) != 0; }
			bool bOverrideSpecularBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x8; } return val; }
			bool bOverrideDiffuseBoost() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x4) != 0; }
			bool bOverrideDiffuseBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x4; } return val; }
			bool bOverrideEmissiveBoost() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bOverrideEmissiveBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bOverrideCastShadowAsMasked() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bOverrideCastShadowAsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
			bool bCastShadowAsMasked() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bCastShadowAsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float MobileSwayMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			float MobileSwayFrequencyMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			float MobileMaxVertexMovementAmplitude() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			float MobileVerticalFrequencyMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float MobileTangentVertexFrequencyMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float SineScaleFrequencyMultipler() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			float SineScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
			float SineScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			float FixedScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
			float FixedScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			float RotateSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float PannerSpeedY() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float PannerSpeedX() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float TransformCenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float TransformCenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			UObject.LinearColor DefaultUniformColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 260); }
			Texture MobileDetailTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 256); }
			Texture MobileMaskTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 252); }
			float MobileBumpOffsetHeightRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float MobileBumpOffsetReferencePlane() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			UObject.LinearColor MobileRimLightingColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 228); }
			float MobileRimLightingExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float MobileRimLightingStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			float MobileEnvironmentFresnelExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float MobileEnvironmentFresnelAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			UObject.LinearColor MobileEnvironmentColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 196); }
			float MobileEnvironmentAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			Texture MobileEnvironmentTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 188); }
			UObject.LinearColor MobileEmissiveColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 172); }
			Texture MobileEmissiveTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 168); }
			float MobileSpecularPower() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			UObject.LinearColor MobileSpecularColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 148); }
			Texture MobileNormalTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 144); }
			EngineTypes.EMobileTextureTransformTarget MobileTextureTransformTarget() { return *cast(EngineTypes.EMobileTextureTransformTarget*)(cast(size_t)cast(void*)this + 143); }
			EngineTypes.EMobileTextureBlendFactorSource MobileTextureBlendFactorSource() { return *cast(EngineTypes.EMobileTextureBlendFactorSource*)(cast(size_t)cast(void*)this + 142); }
			EngineTypes.EMobileTexCoordsSource MobileDetailTextureTexCoordsSource() { return *cast(EngineTypes.EMobileTexCoordsSource*)(cast(size_t)cast(void*)this + 141); }
			EngineTypes.EMobileTexCoordsSource MobileMaskTextureTexCoordsSource() { return *cast(EngineTypes.EMobileTexCoordsSource*)(cast(size_t)cast(void*)this + 140); }
			EngineTypes.EMobileValueSource MobileRimLightingMaskSource() { return *cast(EngineTypes.EMobileValueSource*)(cast(size_t)cast(void*)this + 139); }
			EngineTypes.EMobileEnvironmentBlendMode MobileEnvironmentBlendMode() { return *cast(EngineTypes.EMobileEnvironmentBlendMode*)(cast(size_t)cast(void*)this + 138); }
			EngineTypes.EMobileValueSource MobileEnvironmentMaskSource() { return *cast(EngineTypes.EMobileValueSource*)(cast(size_t)cast(void*)this + 137); }
			EngineTypes.EMobileValueSource MobileEmissiveMaskSource() { return *cast(EngineTypes.EMobileValueSource*)(cast(size_t)cast(void*)this + 136); }
			EngineTypes.EMobileEmissiveColorSource MobileEmissiveColorSource() { return *cast(EngineTypes.EMobileEmissiveColorSource*)(cast(size_t)cast(void*)this + 135); }
			EngineTypes.EMobileSpecularMask MobileSpecularMask() { return *cast(EngineTypes.EMobileSpecularMask*)(cast(size_t)cast(void*)this + 134); }
			EngineTypes.EMobileAmbientOcclusionSource MobileAmbientOcclusionSource() { return *cast(EngineTypes.EMobileAmbientOcclusionSource*)(cast(size_t)cast(void*)this + 133); }
			EngineTypes.EMobileTexCoordsSource MobileBaseTextureTexCoordsSource() { return *cast(EngineTypes.EMobileTexCoordsSource*)(cast(size_t)cast(void*)this + 132); }
			Texture FlattenedTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 128); }
			Texture MobileBaseTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 124); }
			UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 104); }
			ScriptString PreviewMesh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
			MaterialInterface.LightmassMaterialInterfaceSettings LightmassSettings() { return *cast(MaterialInterface.LightmassMaterialInterfaceSettings*)(cast(size_t)cast(void*)this + 64); }
			UObject.RenderCommandFence_Mirror ParentRefFence() { return *cast(UObject.RenderCommandFence_Mirror*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bUseMobileWaveVertexMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x400) != 0; }
		bool bUseMobileWaveVertexMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x400; } return val; }
		bool bUseMobileTextureTransform() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x200) != 0; }
		bool bUseMobileTextureTransform(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x200; } return val; }
		bool bUseMobileVertexColorMultiply() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x100) != 0; }
		bool bUseMobileVertexColorMultiply(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x100; } return val; }
		bool bUseMobileUniformColorMultiply() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x80) != 0; }
		bool bUseMobileUniformColorMultiply(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x80; } return val; }
		bool bLockColorBlending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x40) != 0; }
		bool bLockColorBlending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x40; } return val; }
		bool bUseMobileBumpOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x20) != 0; }
		bool bUseMobileBumpOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x20; } return val; }
		bool bUseMobilePixelSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
		bool bUseMobilePixelSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
		bool bUseMobileVertexSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
		bool bUseMobileVertexSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
		bool bUseMobileSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
		bool bUseMobileSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
		bool bMobileAllowFog() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
		bool bMobileAllowFog(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
		bool bAutoFlattenMobile() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool bAutoFlattenMobile(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
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
	bool GetParameterDesc(ScriptName ParameterName, ScriptString* OutDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(ScriptString*)&params[8] = *OutDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetParameterDesc, params.ptr, cast(void*)0);
		*OutDesc = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetFontParameterValue(ScriptName ParameterName, Font* OutFontValue, int* OutFontPage)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = *OutFontValue;
		*cast(int*)&params[12] = *OutFontPage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFontParameterValue, params.ptr, cast(void*)0);
		*OutFontValue = *cast(Font*)&params[8];
		*OutFontPage = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	bool GetScalarParameterValue(ScriptName ParameterName, float* OutValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScalarParameterValue, params.ptr, cast(void*)0);
		*OutValue = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetScalarCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveFloat* OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScalarCurveParameterValue, params.ptr, cast(void*)0);
		*OutValue = *cast(UObject.InterpCurveFloat*)&params[8];
		return *cast(bool*)&params[24];
	}
	bool GetTextureParameterValue(ScriptName ParameterName, Texture* OutValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTextureParameterValue, params.ptr, cast(void*)0);
		*OutValue = *cast(Texture*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorParameterValue, params.ptr, cast(void*)0);
		*OutValue = *cast(UObject.LinearColor*)&params[8];
		return *cast(bool*)&params[24];
	}
	bool GetVectorCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveVector* OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveVector*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorCurveParameterValue, params.ptr, cast(void*)0);
		*OutValue = *cast(UObject.InterpCurveVector*)&params[8];
		return *cast(bool*)&params[24];
	}
	void SetForceMipLevelsToBeResident(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float ForceDuration, int CinematicTextureGroups)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = OverrideForceMiplevelsToBeResident;
		*cast(bool*)&params[4] = bForceMiplevelsToBeResidentValue;
		*cast(float*)&params[8] = ForceDuration;
		*cast(int*)&params[12] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceMipLevelsToBeResident, params.ptr, cast(void*)0);
	}
}

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
		public @property final bool bOverrideDistanceFieldPenumbraScale() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x20) != 0; }
		public @property final bool bOverrideDistanceFieldPenumbraScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x20; } return val; }
		private ubyte __bOverrideDistanceFieldPenumbraScale[4];
		public @property final bool bOverrideExportResolutionScale() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x10) != 0; }
		public @property final bool bOverrideExportResolutionScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x10; } return val; }
		private ubyte __bOverrideExportResolutionScale[4];
		public @property final bool bOverrideSpecularBoost() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x8) != 0; }
		public @property final bool bOverrideSpecularBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x8; } return val; }
		private ubyte __bOverrideSpecularBoost[4];
		public @property final bool bOverrideDiffuseBoost() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x4) != 0; }
		public @property final bool bOverrideDiffuseBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x4; } return val; }
		private ubyte __bOverrideDiffuseBoost[4];
		public @property final bool bOverrideEmissiveBoost() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bOverrideEmissiveBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bOverrideEmissiveBoost[4];
		public @property final bool bOverrideCastShadowAsMasked() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bOverrideCastShadowAsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bOverrideCastShadowAsMasked[4];
		public @property final auto ref float DistanceFieldPenumbraScale() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __DistanceFieldPenumbraScale[4];
		public @property final auto ref float ExportResolutionScale() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __ExportResolutionScale[4];
		public @property final auto ref float SpecularBoost() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __SpecularBoost[4];
		public @property final auto ref float DiffuseBoost() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __DiffuseBoost[4];
		public @property final auto ref float EmissiveBoost() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __EmissiveBoost[4];
		public @property final bool bCastShadowAsMasked() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bCastShadowAsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bCastShadowAsMasked[4];
	}
	public @property final auto ref float MobileSwayMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref float MobileSwayFrequencyMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float MobileMaxVertexMovementAmplitude() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float MobileVerticalFrequencyMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float MobileTangentVertexFrequencyMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float SineScaleFrequencyMultipler() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float SineScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref float SineScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float FixedScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float FixedScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float RotateSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float PannerSpeedY() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float PannerSpeedX() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float TransformCenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float TransformCenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref UObject.LinearColor DefaultUniformColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref Texture MobileDetailTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref Texture MobileMaskTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MobileBumpOffsetHeightRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float MobileBumpOffsetReferencePlane() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref UObject.LinearColor MobileRimLightingColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float MobileRimLightingExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float MobileRimLightingStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float MobileEnvironmentFresnelExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float MobileEnvironmentFresnelAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref UObject.LinearColor MobileEnvironmentColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float MobileEnvironmentAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref Texture MobileEnvironmentTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref UObject.LinearColor MobileEmissiveColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref Texture MobileEmissiveTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float MobileSpecularPower() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref UObject.LinearColor MobileSpecularColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref Texture MobileNormalTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref EngineTypes.EMobileTextureTransformTarget MobileTextureTransformTarget() { return *cast(EngineTypes.EMobileTextureTransformTarget*)(cast(size_t)cast(void*)this + 143); }
	public @property final auto ref EngineTypes.EMobileTextureBlendFactorSource MobileTextureBlendFactorSource() { return *cast(EngineTypes.EMobileTextureBlendFactorSource*)(cast(size_t)cast(void*)this + 142); }
	public @property final auto ref EngineTypes.EMobileTexCoordsSource MobileDetailTextureTexCoordsSource() { return *cast(EngineTypes.EMobileTexCoordsSource*)(cast(size_t)cast(void*)this + 141); }
	public @property final auto ref EngineTypes.EMobileTexCoordsSource MobileMaskTextureTexCoordsSource() { return *cast(EngineTypes.EMobileTexCoordsSource*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref EngineTypes.EMobileValueSource MobileRimLightingMaskSource() { return *cast(EngineTypes.EMobileValueSource*)(cast(size_t)cast(void*)this + 139); }
	public @property final auto ref EngineTypes.EMobileEnvironmentBlendMode MobileEnvironmentBlendMode() { return *cast(EngineTypes.EMobileEnvironmentBlendMode*)(cast(size_t)cast(void*)this + 138); }
	public @property final auto ref EngineTypes.EMobileValueSource MobileEnvironmentMaskSource() { return *cast(EngineTypes.EMobileValueSource*)(cast(size_t)cast(void*)this + 137); }
	public @property final auto ref EngineTypes.EMobileValueSource MobileEmissiveMaskSource() { return *cast(EngineTypes.EMobileValueSource*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref EngineTypes.EMobileEmissiveColorSource MobileEmissiveColorSource() { return *cast(EngineTypes.EMobileEmissiveColorSource*)(cast(size_t)cast(void*)this + 135); }
	public @property final auto ref EngineTypes.EMobileSpecularMask MobileSpecularMask() { return *cast(EngineTypes.EMobileSpecularMask*)(cast(size_t)cast(void*)this + 134); }
	public @property final auto ref EngineTypes.EMobileAmbientOcclusionSource MobileAmbientOcclusionSource() { return *cast(EngineTypes.EMobileAmbientOcclusionSource*)(cast(size_t)cast(void*)this + 133); }
	public @property final auto ref EngineTypes.EMobileTexCoordsSource MobileBaseTextureTexCoordsSource() { return *cast(EngineTypes.EMobileTexCoordsSource*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Texture FlattenedTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref Texture MobileBaseTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 124); }
	public @property final bool bUseMobileWaveVertexMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x400) != 0; }
	public @property final bool bUseMobileWaveVertexMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x400; } return val; }
	public @property final bool bUseMobileTextureTransform() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x200) != 0; }
	public @property final bool bUseMobileTextureTransform(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x200; } return val; }
	public @property final bool bUseMobileVertexColorMultiply() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x100) != 0; }
	public @property final bool bUseMobileVertexColorMultiply(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x100; } return val; }
	public @property final bool bUseMobileUniformColorMultiply() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x80) != 0; }
	public @property final bool bUseMobileUniformColorMultiply(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x80; } return val; }
	public @property final bool bLockColorBlending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x40) != 0; }
	public @property final bool bLockColorBlending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x40; } return val; }
	public @property final bool bUseMobileBumpOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x20) != 0; }
	public @property final bool bUseMobileBumpOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x20; } return val; }
	public @property final bool bUseMobilePixelSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
	public @property final bool bUseMobilePixelSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
	public @property final bool bUseMobileVertexSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
	public @property final bool bUseMobileVertexSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
	public @property final bool bUseMobileSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
	public @property final bool bUseMobileSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
	public @property final bool bMobileAllowFog() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
	public @property final bool bMobileAllowFog(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
	public @property final bool bAutoFlattenMobile() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bAutoFlattenMobile(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptString PreviewMesh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref MaterialInterface.LightmassMaterialInterfaceSettings LightmassSettings() { return *cast(MaterialInterface.LightmassMaterialInterfaceSettings*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.RenderCommandFence_Mirror ParentRefFence() { return *cast(UObject.RenderCommandFence_Mirror*)(cast(size_t)cast(void*)this + 60); }
	final Material GetMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14251], params.ptr, cast(void*)0);
		return *cast(Material*)params.ptr;
	}
	final PhysicalMaterial GetPhysicalMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14253], params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
	final bool GetParameterDesc(ScriptName ParameterName, ScriptString* OutDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(ScriptString*)&params[8] = *OutDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14255], params.ptr, cast(void*)0);
		*OutDesc = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool GetFontParameterValue(ScriptName ParameterName, Font* OutFontValue, int* OutFontPage)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = *OutFontValue;
		*cast(int*)&params[12] = *OutFontPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14259], params.ptr, cast(void*)0);
		*OutFontValue = *cast(Font*)&params[8];
		*OutFontPage = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	final bool GetScalarParameterValue(ScriptName ParameterName, float* OutValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14264], params.ptr, cast(void*)0);
		*OutValue = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetScalarCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveFloat* OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14268], params.ptr, cast(void*)0);
		*OutValue = *cast(UObject.InterpCurveFloat*)&params[8];
		return *cast(bool*)&params[24];
	}
	final bool GetTextureParameterValue(ScriptName ParameterName, Texture* OutValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14272], params.ptr, cast(void*)0);
		*OutValue = *cast(Texture*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14276], params.ptr, cast(void*)0);
		*OutValue = *cast(UObject.LinearColor*)&params[8];
		return *cast(bool*)&params[24];
	}
	final bool GetVectorCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveVector* OutValue)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveVector*)&params[8] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14280], params.ptr, cast(void*)0);
		*OutValue = *cast(UObject.InterpCurveVector*)&params[8];
		return *cast(bool*)&params[24];
	}
	final void SetForceMipLevelsToBeResident(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float ForceDuration, int CinematicTextureGroups)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = OverrideForceMiplevelsToBeResident;
		*cast(bool*)&params[4] = bForceMiplevelsToBeResidentValue;
		*cast(float*)&params[8] = ForceDuration;
		*cast(int*)&params[12] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14284], params.ptr, cast(void*)0);
	}
}

module UnrealScript.Engine.PostProcessVolume;

import ScriptClasses;
import UnrealScript.Engine.DOFEffect;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.Texture;

extern(C++) interface PostProcessVolume : Volume
{
	struct LUTBlender
	{
		public @property final auto ref ScriptArray!(Texture) LUTTextures() { return *cast(ScriptArray!(Texture)*)(cast(size_t)&this + 0); }
		private ubyte __LUTTextures[12];
		public @property final auto ref ScriptArray!(float) LUTWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		private ubyte __LUTWeights[12];
	}
	struct PostProcessSettings
	{
		public @property final auto ref PostProcessVolume.LUTBlender ColorGradingLUT() { return *cast(PostProcessVolume.LUTBlender*)(cast(size_t)&this + 196); }
		private ubyte __ColorGradingLUT[24];
		public @property final auto ref Texture ColorGrading_LookupTable() { return *cast(Texture*)(cast(size_t)&this + 192); }
		private ubyte __ColorGrading_LookupTable[4];
		public @property final auto ref float RimShader_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 188); }
		private ubyte __RimShader_InterpolationDuration[4];
		public @property final auto ref UObject.LinearColor RimShader_Color() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 172); }
		private ubyte __RimShader_Color[16];
		public @property final auto ref float Scene_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 168); }
		private ubyte __Scene_InterpolationDuration[4];
		public @property final auto ref Vector Scene_Shadows() { return *cast(Vector*)(cast(size_t)&this + 156); }
		private ubyte __Scene_Shadows[12];
		public @property final auto ref Vector Scene_MidTones() { return *cast(Vector*)(cast(size_t)&this + 144); }
		private ubyte __Scene_MidTones[12];
		public @property final auto ref Vector Scene_HighLights() { return *cast(Vector*)(cast(size_t)&this + 132); }
		private ubyte __Scene_HighLights[12];
		public @property final auto ref float Scene_ImageGrainScale() { return *cast(float*)(cast(size_t)&this + 128); }
		private ubyte __Scene_ImageGrainScale[4];
		public @property final auto ref float Scene_TonemapperScale() { return *cast(float*)(cast(size_t)&this + 124); }
		private ubyte __Scene_TonemapperScale[4];
		public @property final auto ref Vector Scene_Colorize() { return *cast(Vector*)(cast(size_t)&this + 112); }
		private ubyte __Scene_Colorize[12];
		public @property final auto ref float Scene_Desaturation() { return *cast(float*)(cast(size_t)&this + 108); }
		private ubyte __Scene_Desaturation[4];
		public @property final auto ref float MotionBlur_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 104); }
		private ubyte __MotionBlur_InterpolationDuration[4];
		public @property final auto ref float MotionBlur_CameraTranslationThreshold() { return *cast(float*)(cast(size_t)&this + 100); }
		private ubyte __MotionBlur_CameraTranslationThreshold[4];
		public @property final auto ref float MotionBlur_CameraRotationThreshold() { return *cast(float*)(cast(size_t)&this + 96); }
		private ubyte __MotionBlur_CameraRotationThreshold[4];
		public @property final bool MotionBlur_FullMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 92) & 0x1) != 0; }
		public @property final bool MotionBlur_FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 92) &= ~0x1; } return val; }
		private ubyte __MotionBlur_FullMotionBlur[4];
		public @property final auto ref float MotionBlur_Amount() { return *cast(float*)(cast(size_t)&this + 88); }
		private ubyte __MotionBlur_Amount[4];
		public @property final auto ref float MotionBlur_MaxVelocity() { return *cast(float*)(cast(size_t)&this + 84); }
		private ubyte __MotionBlur_MaxVelocity[4];
		public @property final auto ref float DOF_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 80); }
		private ubyte __DOF_InterpolationDuration[4];
		public @property final auto ref Vector DOF_FocusPosition() { return *cast(Vector*)(cast(size_t)&this + 68); }
		private ubyte __DOF_FocusPosition[12];
		public @property final auto ref float DOF_FocusDistance() { return *cast(float*)(cast(size_t)&this + 64); }
		private ubyte __DOF_FocusDistance[4];
		public @property final auto ref float DOF_FocusInnerRadius() { return *cast(float*)(cast(size_t)&this + 60); }
		private ubyte __DOF_FocusInnerRadius[4];
		public @property final auto ref DOFEffect.EFocusType DOF_FocusType() { return *cast(DOFEffect.EFocusType*)(cast(size_t)&this + 56); }
		private ubyte __DOF_FocusType[1];
		public @property final auto ref UObject.Color DOF_ModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)&this + 52); }
		private ubyte __DOF_ModulateBlurColor[4];
		public @property final auto ref float DOF_MaxFarBlurAmount() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __DOF_MaxFarBlurAmount[4];
		public @property final auto ref float DOF_MinBlurAmount() { return *cast(float*)(cast(size_t)&this + 44); }
		private ubyte __DOF_MinBlurAmount[4];
		public @property final auto ref float DOF_MaxNearBlurAmount() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __DOF_MaxNearBlurAmount[4];
		public @property final auto ref float DOF_BlurKernelSize() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __DOF_BlurKernelSize[4];
		public @property final auto ref float DOF_FalloffExponent() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __DOF_FalloffExponent[4];
		public @property final auto ref float DOF_BlurBloomKernelSize() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __DOF_BlurBloomKernelSize[4];
		public @property final auto ref float Bloom_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __Bloom_InterpolationDuration[4];
		public @property final auto ref float Bloom_ScreenBlendThreshold() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __Bloom_ScreenBlendThreshold[4];
		public @property final auto ref UObject.Color Bloom_Tint() { return *cast(UObject.Color*)(cast(size_t)&this + 16); }
		private ubyte __Bloom_Tint[4];
		public @property final auto ref float Bloom_Threshold() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Bloom_Threshold[4];
		public @property final auto ref float Bloom_Scale() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Bloom_Scale[4];
		public @property final bool bOverrideRimShaderColor() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2000) != 0; }
		public @property final bool bOverrideRimShaderColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2000; } return val; }
		private ubyte __bOverrideRimShaderColor[4];
		public @property final bool bAllowAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1000) != 0; }
		public @property final bool bAllowAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1000; } return val; }
		private ubyte __bAllowAmbientOcclusion[4];
		public @property final bool bEnableSceneEffect() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x800) != 0; }
		public @property final bool bEnableSceneEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x800; } return val; }
		private ubyte __bEnableSceneEffect[4];
		public @property final bool bEnableMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x400) != 0; }
		public @property final bool bEnableMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x400; } return val; }
		private ubyte __bEnableMotionBlur[4];
		public @property final bool bEnableDOF() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x200) != 0; }
		public @property final bool bEnableDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x200; } return val; }
		private ubyte __bEnableDOF[4];
		public @property final bool bEnableBloom() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x100) != 0; }
		public @property final bool bEnableBloom(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x100; } return val; }
		private ubyte __bEnableBloom[4];
		public @property final bool bOverride_RimShader_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x80) != 0; }
		public @property final bool bOverride_RimShader_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x80; } return val; }
		private ubyte __bOverride_RimShader_InterpolationDuration[4];
		public @property final bool bOverride_RimShader_Color() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x40) != 0; }
		public @property final bool bOverride_RimShader_Color(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x40; } return val; }
		private ubyte __bOverride_RimShader_Color[4];
		public @property final bool bOverride_Scene_ColorGradingLUT() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x20) != 0; }
		public @property final bool bOverride_Scene_ColorGradingLUT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x20; } return val; }
		private ubyte __bOverride_Scene_ColorGradingLUT[4];
		public @property final bool bOverride_Scene_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x10) != 0; }
		public @property final bool bOverride_Scene_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x10; } return val; }
		private ubyte __bOverride_Scene_InterpolationDuration[4];
		public @property final bool bOverride_Scene_Shadows() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x8) != 0; }
		public @property final bool bOverride_Scene_Shadows(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x8; } return val; }
		private ubyte __bOverride_Scene_Shadows[4];
		public @property final bool bOverride_Scene_MidTones() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x4) != 0; }
		public @property final bool bOverride_Scene_MidTones(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x4; } return val; }
		private ubyte __bOverride_Scene_MidTones[4];
		public @property final bool bOverride_Scene_HighLights() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
		public @property final bool bOverride_Scene_HighLights(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
		private ubyte __bOverride_Scene_HighLights[4];
		public @property final bool bOverride_Scene_ImageGrainScale() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bOverride_Scene_ImageGrainScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bOverride_Scene_ImageGrainScale[4];
		public @property final bool bOverride_Scene_TonemapperScale() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000000) != 0; }
		public @property final bool bOverride_Scene_TonemapperScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000000; } return val; }
		private ubyte __bOverride_Scene_TonemapperScale[4];
		public @property final bool bOverride_Scene_Colorize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000000) != 0; }
		public @property final bool bOverride_Scene_Colorize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000000; } return val; }
		private ubyte __bOverride_Scene_Colorize[4];
		public @property final bool bOverride_Scene_Desaturation() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000000) != 0; }
		public @property final bool bOverride_Scene_Desaturation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000000; } return val; }
		private ubyte __bOverride_Scene_Desaturation[4];
		public @property final bool bOverride_MotionBlur_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000000) != 0; }
		public @property final bool bOverride_MotionBlur_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000000; } return val; }
		private ubyte __bOverride_MotionBlur_InterpolationDuration[4];
		public @property final bool bOverride_MotionBlur_CameraTranslationThreshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000000) != 0; }
		public @property final bool bOverride_MotionBlur_CameraTranslationThreshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000000; } return val; }
		private ubyte __bOverride_MotionBlur_CameraTranslationThreshold[4];
		public @property final bool bOverride_MotionBlur_CameraRotationThreshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000000) != 0; }
		public @property final bool bOverride_MotionBlur_CameraRotationThreshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000000; } return val; }
		private ubyte __bOverride_MotionBlur_CameraRotationThreshold[4];
		public @property final bool bOverride_MotionBlur_FullMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000000) != 0; }
		public @property final bool bOverride_MotionBlur_FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000000; } return val; }
		private ubyte __bOverride_MotionBlur_FullMotionBlur[4];
		public @property final bool bOverride_MotionBlur_Amount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000000) != 0; }
		public @property final bool bOverride_MotionBlur_Amount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000000; } return val; }
		private ubyte __bOverride_MotionBlur_Amount[4];
		public @property final bool bOverride_MotionBlur_MaxVelocity() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800000) != 0; }
		public @property final bool bOverride_MotionBlur_MaxVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800000; } return val; }
		private ubyte __bOverride_MotionBlur_MaxVelocity[4];
		public @property final bool bOverride_DOF_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400000) != 0; }
		public @property final bool bOverride_DOF_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400000; } return val; }
		private ubyte __bOverride_DOF_InterpolationDuration[4];
		public @property final bool bOverride_DOF_FocusPosition() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200000) != 0; }
		public @property final bool bOverride_DOF_FocusPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200000; } return val; }
		private ubyte __bOverride_DOF_FocusPosition[4];
		public @property final bool bOverride_DOF_FocusDistance() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100000) != 0; }
		public @property final bool bOverride_DOF_FocusDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100000; } return val; }
		private ubyte __bOverride_DOF_FocusDistance[4];
		public @property final bool bOverride_DOF_FocusInnerRadius() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000) != 0; }
		public @property final bool bOverride_DOF_FocusInnerRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000; } return val; }
		private ubyte __bOverride_DOF_FocusInnerRadius[4];
		public @property final bool bOverride_DOF_FocusType() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000) != 0; }
		public @property final bool bOverride_DOF_FocusType(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000; } return val; }
		private ubyte __bOverride_DOF_FocusType[4];
		public @property final bool bOverride_DOF_ModulateBlurColor() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000) != 0; }
		public @property final bool bOverride_DOF_ModulateBlurColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000; } return val; }
		private ubyte __bOverride_DOF_ModulateBlurColor[4];
		public @property final bool bOverride_DOF_MaxFarBlurAmount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000) != 0; }
		public @property final bool bOverride_DOF_MaxFarBlurAmount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000; } return val; }
		private ubyte __bOverride_DOF_MaxFarBlurAmount[4];
		public @property final bool bOverride_DOF_MinBlurAmount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000) != 0; }
		public @property final bool bOverride_DOF_MinBlurAmount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000; } return val; }
		private ubyte __bOverride_DOF_MinBlurAmount[4];
		public @property final bool bOverride_DOF_MaxNearBlurAmount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000) != 0; }
		public @property final bool bOverride_DOF_MaxNearBlurAmount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000; } return val; }
		private ubyte __bOverride_DOF_MaxNearBlurAmount[4];
		public @property final bool bOverride_DOF_BlurBloomKernelSize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000) != 0; }
		public @property final bool bOverride_DOF_BlurBloomKernelSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000; } return val; }
		private ubyte __bOverride_DOF_BlurBloomKernelSize[4];
		public @property final bool bOverride_DOF_BlurKernelSize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000) != 0; }
		public @property final bool bOverride_DOF_BlurKernelSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000; } return val; }
		private ubyte __bOverride_DOF_BlurKernelSize[4];
		public @property final bool bOverride_DOF_FalloffExponent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800) != 0; }
		public @property final bool bOverride_DOF_FalloffExponent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800; } return val; }
		private ubyte __bOverride_DOF_FalloffExponent[4];
		public @property final bool bOverride_Bloom_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400) != 0; }
		public @property final bool bOverride_Bloom_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400; } return val; }
		private ubyte __bOverride_Bloom_InterpolationDuration[4];
		public @property final bool bOverride_Bloom_ScreenBlendThreshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200) != 0; }
		public @property final bool bOverride_Bloom_ScreenBlendThreshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200; } return val; }
		private ubyte __bOverride_Bloom_ScreenBlendThreshold[4];
		public @property final bool bOverride_Bloom_Tint() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100) != 0; }
		public @property final bool bOverride_Bloom_Tint(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100; } return val; }
		private ubyte __bOverride_Bloom_Tint[4];
		public @property final bool bOverride_Bloom_Threshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
		public @property final bool bOverride_Bloom_Threshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
		private ubyte __bOverride_Bloom_Threshold[4];
		public @property final bool bOverride_Bloom_Scale() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
		public @property final bool bOverride_Bloom_Scale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
		private ubyte __bOverride_Bloom_Scale[4];
		public @property final bool bOverride_OverrideRimShaderColor() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool bOverride_OverrideRimShaderColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __bOverride_OverrideRimShaderColor[4];
		public @property final bool bOverride_AllowAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool bOverride_AllowAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __bOverride_AllowAmbientOcclusion[4];
		public @property final bool bOverride_EnableSceneEffect() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool bOverride_EnableSceneEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __bOverride_EnableSceneEffect[4];
		public @property final bool bOverride_EnableMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bOverride_EnableMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bOverride_EnableMotionBlur[4];
		public @property final bool bOverride_EnableDOF() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bOverride_EnableDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bOverride_EnableDOF[4];
		public @property final bool bOverride_EnableBloom() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bOverride_EnableBloom(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bOverride_EnableBloom[4];
	}
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1; } return val; }
	public @property final auto ref PostProcessVolume NextLowerPriorityVolume() { return *cast(PostProcessVolume*)(cast(size_t)cast(void*)this + 744); }
	// WARNING: Property 'Settings' has the same name as a defined type!
	public @property final auto ref float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24755], params.ptr, cast(void*)0);
	}
}

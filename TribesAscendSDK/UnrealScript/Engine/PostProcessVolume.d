module UnrealScript.Engine.PostProcessVolume;

import ScriptClasses;
import UnrealScript.Engine.DOFEffect;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.Texture;

extern(C++) interface PostProcessVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PostProcessVolume")); }
	private static __gshared PostProcessVolume mDefaultProperties;
	@property final static PostProcessVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PostProcessVolume)("PostProcessVolume Engine.Default__PostProcessVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.PostProcessVolume.OnToggle")); }
	}
	struct LUTBlender
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PostProcessVolume.LUTBlender")); }
		@property final auto ref
		{
			ScriptArray!(Texture) LUTTextures() { return *cast(ScriptArray!(Texture)*)(cast(size_t)&this + 0); }
			ScriptArray!(float) LUTWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		}
	}
	struct PostProcessSettings
	{
		private ubyte __buffer__[220];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.PostProcessVolume.PostProcessSettings")); }
		@property final
		{
			auto ref
			{
				PostProcessVolume.LUTBlender ColorGradingLUT() { return *cast(PostProcessVolume.LUTBlender*)(cast(size_t)&this + 196); }
				Texture ColorGrading_LookupTable() { return *cast(Texture*)(cast(size_t)&this + 192); }
				float RimShader_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 188); }
				UObject.LinearColor RimShader_Color() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 172); }
				float Scene_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 168); }
				Vector Scene_Shadows() { return *cast(Vector*)(cast(size_t)&this + 156); }
				Vector Scene_MidTones() { return *cast(Vector*)(cast(size_t)&this + 144); }
				Vector Scene_HighLights() { return *cast(Vector*)(cast(size_t)&this + 132); }
				float Scene_ImageGrainScale() { return *cast(float*)(cast(size_t)&this + 128); }
				float Scene_TonemapperScale() { return *cast(float*)(cast(size_t)&this + 124); }
				Vector Scene_Colorize() { return *cast(Vector*)(cast(size_t)&this + 112); }
				float Scene_Desaturation() { return *cast(float*)(cast(size_t)&this + 108); }
				float MotionBlur_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 104); }
				float MotionBlur_CameraTranslationThreshold() { return *cast(float*)(cast(size_t)&this + 100); }
				float MotionBlur_CameraRotationThreshold() { return *cast(float*)(cast(size_t)&this + 96); }
				float MotionBlur_Amount() { return *cast(float*)(cast(size_t)&this + 88); }
				float MotionBlur_MaxVelocity() { return *cast(float*)(cast(size_t)&this + 84); }
				float DOF_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 80); }
				Vector DOF_FocusPosition() { return *cast(Vector*)(cast(size_t)&this + 68); }
				float DOF_FocusDistance() { return *cast(float*)(cast(size_t)&this + 64); }
				float DOF_FocusInnerRadius() { return *cast(float*)(cast(size_t)&this + 60); }
				DOFEffect.EFocusType DOF_FocusType() { return *cast(DOFEffect.EFocusType*)(cast(size_t)&this + 56); }
				UObject.Color DOF_ModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)&this + 52); }
				float DOF_MaxFarBlurAmount() { return *cast(float*)(cast(size_t)&this + 48); }
				float DOF_MinBlurAmount() { return *cast(float*)(cast(size_t)&this + 44); }
				float DOF_MaxNearBlurAmount() { return *cast(float*)(cast(size_t)&this + 40); }
				float DOF_BlurKernelSize() { return *cast(float*)(cast(size_t)&this + 36); }
				float DOF_FalloffExponent() { return *cast(float*)(cast(size_t)&this + 32); }
				float DOF_BlurBloomKernelSize() { return *cast(float*)(cast(size_t)&this + 28); }
				float Bloom_InterpolationDuration() { return *cast(float*)(cast(size_t)&this + 24); }
				float Bloom_ScreenBlendThreshold() { return *cast(float*)(cast(size_t)&this + 20); }
				UObject.Color Bloom_Tint() { return *cast(UObject.Color*)(cast(size_t)&this + 16); }
				float Bloom_Threshold() { return *cast(float*)(cast(size_t)&this + 12); }
				float Bloom_Scale() { return *cast(float*)(cast(size_t)&this + 8); }
			}
			bool MotionBlur_FullMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 92) & 0x1) != 0; }
			bool MotionBlur_FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 92) &= ~0x1; } return val; }
			bool bOverrideRimShaderColor() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2000) != 0; }
			bool bOverrideRimShaderColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2000; } return val; }
			bool bAllowAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1000) != 0; }
			bool bAllowAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1000; } return val; }
			bool bEnableSceneEffect() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x800) != 0; }
			bool bEnableSceneEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x800; } return val; }
			bool bEnableMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x400) != 0; }
			bool bEnableMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x400; } return val; }
			bool bEnableDOF() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x200) != 0; }
			bool bEnableDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x200; } return val; }
			bool bEnableBloom() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x100) != 0; }
			bool bEnableBloom(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x100; } return val; }
			bool bOverride_RimShader_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x80) != 0; }
			bool bOverride_RimShader_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x80; } return val; }
			bool bOverride_RimShader_Color() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x40) != 0; }
			bool bOverride_RimShader_Color(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x40; } return val; }
			bool bOverride_Scene_ColorGradingLUT() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x20) != 0; }
			bool bOverride_Scene_ColorGradingLUT(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x20; } return val; }
			bool bOverride_Scene_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x10) != 0; }
			bool bOverride_Scene_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x10; } return val; }
			bool bOverride_Scene_Shadows() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x8) != 0; }
			bool bOverride_Scene_Shadows(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x8; } return val; }
			bool bOverride_Scene_MidTones() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x4) != 0; }
			bool bOverride_Scene_MidTones(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x4; } return val; }
			bool bOverride_Scene_HighLights() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
			bool bOverride_Scene_HighLights(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
			bool bOverride_Scene_ImageGrainScale() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bOverride_Scene_ImageGrainScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
			bool bOverride_Scene_TonemapperScale() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000000) != 0; }
			bool bOverride_Scene_TonemapperScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000000; } return val; }
			bool bOverride_Scene_Colorize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000000) != 0; }
			bool bOverride_Scene_Colorize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000000; } return val; }
			bool bOverride_Scene_Desaturation() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000000) != 0; }
			bool bOverride_Scene_Desaturation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000000; } return val; }
			bool bOverride_MotionBlur_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000000) != 0; }
			bool bOverride_MotionBlur_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000000; } return val; }
			bool bOverride_MotionBlur_CameraTranslationThreshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000000) != 0; }
			bool bOverride_MotionBlur_CameraTranslationThreshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000000; } return val; }
			bool bOverride_MotionBlur_CameraRotationThreshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000000) != 0; }
			bool bOverride_MotionBlur_CameraRotationThreshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000000; } return val; }
			bool bOverride_MotionBlur_FullMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000000) != 0; }
			bool bOverride_MotionBlur_FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000000; } return val; }
			bool bOverride_MotionBlur_Amount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000000) != 0; }
			bool bOverride_MotionBlur_Amount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000000; } return val; }
			bool bOverride_MotionBlur_MaxVelocity() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800000) != 0; }
			bool bOverride_MotionBlur_MaxVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800000; } return val; }
			bool bOverride_DOF_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400000) != 0; }
			bool bOverride_DOF_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400000; } return val; }
			bool bOverride_DOF_FocusPosition() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200000) != 0; }
			bool bOverride_DOF_FocusPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200000; } return val; }
			bool bOverride_DOF_FocusDistance() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100000) != 0; }
			bool bOverride_DOF_FocusDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100000; } return val; }
			bool bOverride_DOF_FocusInnerRadius() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80000) != 0; }
			bool bOverride_DOF_FocusInnerRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80000; } return val; }
			bool bOverride_DOF_FocusType() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000) != 0; }
			bool bOverride_DOF_FocusType(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000; } return val; }
			bool bOverride_DOF_ModulateBlurColor() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000) != 0; }
			bool bOverride_DOF_ModulateBlurColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000; } return val; }
			bool bOverride_DOF_MaxFarBlurAmount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000) != 0; }
			bool bOverride_DOF_MaxFarBlurAmount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000; } return val; }
			bool bOverride_DOF_MinBlurAmount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8000) != 0; }
			bool bOverride_DOF_MinBlurAmount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8000; } return val; }
			bool bOverride_DOF_MaxNearBlurAmount() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000) != 0; }
			bool bOverride_DOF_MaxNearBlurAmount(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000; } return val; }
			bool bOverride_DOF_BlurBloomKernelSize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000) != 0; }
			bool bOverride_DOF_BlurBloomKernelSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000; } return val; }
			bool bOverride_DOF_BlurKernelSize() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000) != 0; }
			bool bOverride_DOF_BlurKernelSize(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000; } return val; }
			bool bOverride_DOF_FalloffExponent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800) != 0; }
			bool bOverride_DOF_FalloffExponent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800; } return val; }
			bool bOverride_Bloom_InterpolationDuration() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400) != 0; }
			bool bOverride_Bloom_InterpolationDuration(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400; } return val; }
			bool bOverride_Bloom_ScreenBlendThreshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200) != 0; }
			bool bOverride_Bloom_ScreenBlendThreshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200; } return val; }
			bool bOverride_Bloom_Tint() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100) != 0; }
			bool bOverride_Bloom_Tint(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100; } return val; }
			bool bOverride_Bloom_Threshold() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
			bool bOverride_Bloom_Threshold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
			bool bOverride_Bloom_Scale() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
			bool bOverride_Bloom_Scale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
			bool bOverride_OverrideRimShaderColor() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
			bool bOverride_OverrideRimShaderColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
			bool bOverride_AllowAmbientOcclusion() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
			bool bOverride_AllowAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
			bool bOverride_EnableSceneEffect() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool bOverride_EnableSceneEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
			bool bOverride_EnableMotionBlur() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bOverride_EnableMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bOverride_EnableDOF() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bOverride_EnableDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bOverride_EnableBloom() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bOverride_EnableBloom(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			PostProcessVolume NextLowerPriorityVolume() { return *cast(PostProcessVolume*)(cast(size_t)cast(void*)this + 744); }
			// WARNING: Property 'Settings' has the same name as a defined type!
			float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1; } return val; }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}

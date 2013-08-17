module UnrealScript.Engine.PostProcessVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DOFEffect;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.Texture;

extern(C++) interface PostProcessVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PostProcessVolume")()); }
	private static __gshared PostProcessVolume mDefaultProperties;
	@property final static PostProcessVolume DefaultProperties() { mixin(MGDPC!(PostProcessVolume, "PostProcessVolume Engine.Default__PostProcessVolume")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.PostProcessVolume.OnToggle")()); }
	}
	struct LUTBlender
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PostProcessVolume.LUTBlender")()); }
		@property final auto ref
		{
			ScriptArray!(Texture) LUTTextures() { mixin(MGPS!("ScriptArray!(Texture)", 0)()); }
			ScriptArray!(float) LUTWeights() { mixin(MGPS!("ScriptArray!(float)", 12)()); }
		}
	}
	struct PostProcessSettings
	{
		private ubyte __buffer__[220];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.PostProcessVolume.PostProcessSettings")()); }
		@property final
		{
			auto ref
			{
				PostProcessVolume.LUTBlender ColorGradingLUT() { mixin(MGPS!("PostProcessVolume.LUTBlender", 196)()); }
				Texture ColorGrading_LookupTable() { mixin(MGPS!("Texture", 192)()); }
				float RimShader_InterpolationDuration() { mixin(MGPS!("float", 188)()); }
				UObject.LinearColor RimShader_Color() { mixin(MGPS!("UObject.LinearColor", 172)()); }
				float Scene_InterpolationDuration() { mixin(MGPS!("float", 168)()); }
				Vector Scene_Shadows() { mixin(MGPS!("Vector", 156)()); }
				Vector Scene_MidTones() { mixin(MGPS!("Vector", 144)()); }
				Vector Scene_HighLights() { mixin(MGPS!("Vector", 132)()); }
				float Scene_ImageGrainScale() { mixin(MGPS!("float", 128)()); }
				float Scene_TonemapperScale() { mixin(MGPS!("float", 124)()); }
				Vector Scene_Colorize() { mixin(MGPS!("Vector", 112)()); }
				float Scene_Desaturation() { mixin(MGPS!("float", 108)()); }
				float MotionBlur_InterpolationDuration() { mixin(MGPS!("float", 104)()); }
				float MotionBlur_CameraTranslationThreshold() { mixin(MGPS!("float", 100)()); }
				float MotionBlur_CameraRotationThreshold() { mixin(MGPS!("float", 96)()); }
				float MotionBlur_Amount() { mixin(MGPS!("float", 88)()); }
				float MotionBlur_MaxVelocity() { mixin(MGPS!("float", 84)()); }
				float DOF_InterpolationDuration() { mixin(MGPS!("float", 80)()); }
				Vector DOF_FocusPosition() { mixin(MGPS!("Vector", 68)()); }
				float DOF_FocusDistance() { mixin(MGPS!("float", 64)()); }
				float DOF_FocusInnerRadius() { mixin(MGPS!("float", 60)()); }
				DOFEffect.EFocusType DOF_FocusType() { mixin(MGPS!("DOFEffect.EFocusType", 56)()); }
				UObject.Color DOF_ModulateBlurColor() { mixin(MGPS!("UObject.Color", 52)()); }
				float DOF_MaxFarBlurAmount() { mixin(MGPS!("float", 48)()); }
				float DOF_MinBlurAmount() { mixin(MGPS!("float", 44)()); }
				float DOF_MaxNearBlurAmount() { mixin(MGPS!("float", 40)()); }
				float DOF_BlurKernelSize() { mixin(MGPS!("float", 36)()); }
				float DOF_FalloffExponent() { mixin(MGPS!("float", 32)()); }
				float DOF_BlurBloomKernelSize() { mixin(MGPS!("float", 28)()); }
				float Bloom_InterpolationDuration() { mixin(MGPS!("float", 24)()); }
				float Bloom_ScreenBlendThreshold() { mixin(MGPS!("float", 20)()); }
				UObject.Color Bloom_Tint() { mixin(MGPS!("UObject.Color", 16)()); }
				float Bloom_Threshold() { mixin(MGPS!("float", 12)()); }
				float Bloom_Scale() { mixin(MGPS!("float", 8)()); }
			}
			bool MotionBlur_FullMotionBlur() { mixin(MGBPS!(92, 0x1)()); }
			bool MotionBlur_FullMotionBlur(bool val) { mixin(MSBPS!(92, 0x1)()); }
			bool bOverrideRimShaderColor() { mixin(MGBPS!(4, 0x2000)()); }
			bool bOverrideRimShaderColor(bool val) { mixin(MSBPS!(4, 0x2000)()); }
			bool bAllowAmbientOcclusion() { mixin(MGBPS!(4, 0x1000)()); }
			bool bAllowAmbientOcclusion(bool val) { mixin(MSBPS!(4, 0x1000)()); }
			bool bEnableSceneEffect() { mixin(MGBPS!(4, 0x800)()); }
			bool bEnableSceneEffect(bool val) { mixin(MSBPS!(4, 0x800)()); }
			bool bEnableMotionBlur() { mixin(MGBPS!(4, 0x400)()); }
			bool bEnableMotionBlur(bool val) { mixin(MSBPS!(4, 0x400)()); }
			bool bEnableDOF() { mixin(MGBPS!(4, 0x200)()); }
			bool bEnableDOF(bool val) { mixin(MSBPS!(4, 0x200)()); }
			bool bEnableBloom() { mixin(MGBPS!(4, 0x100)()); }
			bool bEnableBloom(bool val) { mixin(MSBPS!(4, 0x100)()); }
			bool bOverride_RimShader_InterpolationDuration() { mixin(MGBPS!(4, 0x80)()); }
			bool bOverride_RimShader_InterpolationDuration(bool val) { mixin(MSBPS!(4, 0x80)()); }
			bool bOverride_RimShader_Color() { mixin(MGBPS!(4, 0x40)()); }
			bool bOverride_RimShader_Color(bool val) { mixin(MSBPS!(4, 0x40)()); }
			bool bOverride_Scene_ColorGradingLUT() { mixin(MGBPS!(4, 0x20)()); }
			bool bOverride_Scene_ColorGradingLUT(bool val) { mixin(MSBPS!(4, 0x20)()); }
			bool bOverride_Scene_InterpolationDuration() { mixin(MGBPS!(4, 0x10)()); }
			bool bOverride_Scene_InterpolationDuration(bool val) { mixin(MSBPS!(4, 0x10)()); }
			bool bOverride_Scene_Shadows() { mixin(MGBPS!(4, 0x8)()); }
			bool bOverride_Scene_Shadows(bool val) { mixin(MSBPS!(4, 0x8)()); }
			bool bOverride_Scene_MidTones() { mixin(MGBPS!(4, 0x4)()); }
			bool bOverride_Scene_MidTones(bool val) { mixin(MSBPS!(4, 0x4)()); }
			bool bOverride_Scene_HighLights() { mixin(MGBPS!(4, 0x2)()); }
			bool bOverride_Scene_HighLights(bool val) { mixin(MSBPS!(4, 0x2)()); }
			bool bOverride_Scene_ImageGrainScale() { mixin(MGBPS!(4, 0x1)()); }
			bool bOverride_Scene_ImageGrainScale(bool val) { mixin(MSBPS!(4, 0x1)()); }
			bool bOverride_Scene_TonemapperScale() { mixin(MGBPS!(0, 0x80000000)()); }
			bool bOverride_Scene_TonemapperScale(bool val) { mixin(MSBPS!(0, 0x80000000)()); }
			bool bOverride_Scene_Colorize() { mixin(MGBPS!(0, 0x40000000)()); }
			bool bOverride_Scene_Colorize(bool val) { mixin(MSBPS!(0, 0x40000000)()); }
			bool bOverride_Scene_Desaturation() { mixin(MGBPS!(0, 0x20000000)()); }
			bool bOverride_Scene_Desaturation(bool val) { mixin(MSBPS!(0, 0x20000000)()); }
			bool bOverride_MotionBlur_InterpolationDuration() { mixin(MGBPS!(0, 0x10000000)()); }
			bool bOverride_MotionBlur_InterpolationDuration(bool val) { mixin(MSBPS!(0, 0x10000000)()); }
			bool bOverride_MotionBlur_CameraTranslationThreshold() { mixin(MGBPS!(0, 0x8000000)()); }
			bool bOverride_MotionBlur_CameraTranslationThreshold(bool val) { mixin(MSBPS!(0, 0x8000000)()); }
			bool bOverride_MotionBlur_CameraRotationThreshold() { mixin(MGBPS!(0, 0x4000000)()); }
			bool bOverride_MotionBlur_CameraRotationThreshold(bool val) { mixin(MSBPS!(0, 0x4000000)()); }
			bool bOverride_MotionBlur_FullMotionBlur() { mixin(MGBPS!(0, 0x2000000)()); }
			bool bOverride_MotionBlur_FullMotionBlur(bool val) { mixin(MSBPS!(0, 0x2000000)()); }
			bool bOverride_MotionBlur_Amount() { mixin(MGBPS!(0, 0x1000000)()); }
			bool bOverride_MotionBlur_Amount(bool val) { mixin(MSBPS!(0, 0x1000000)()); }
			bool bOverride_MotionBlur_MaxVelocity() { mixin(MGBPS!(0, 0x800000)()); }
			bool bOverride_MotionBlur_MaxVelocity(bool val) { mixin(MSBPS!(0, 0x800000)()); }
			bool bOverride_DOF_InterpolationDuration() { mixin(MGBPS!(0, 0x400000)()); }
			bool bOverride_DOF_InterpolationDuration(bool val) { mixin(MSBPS!(0, 0x400000)()); }
			bool bOverride_DOF_FocusPosition() { mixin(MGBPS!(0, 0x200000)()); }
			bool bOverride_DOF_FocusPosition(bool val) { mixin(MSBPS!(0, 0x200000)()); }
			bool bOverride_DOF_FocusDistance() { mixin(MGBPS!(0, 0x100000)()); }
			bool bOverride_DOF_FocusDistance(bool val) { mixin(MSBPS!(0, 0x100000)()); }
			bool bOverride_DOF_FocusInnerRadius() { mixin(MGBPS!(0, 0x80000)()); }
			bool bOverride_DOF_FocusInnerRadius(bool val) { mixin(MSBPS!(0, 0x80000)()); }
			bool bOverride_DOF_FocusType() { mixin(MGBPS!(0, 0x40000)()); }
			bool bOverride_DOF_FocusType(bool val) { mixin(MSBPS!(0, 0x40000)()); }
			bool bOverride_DOF_ModulateBlurColor() { mixin(MGBPS!(0, 0x20000)()); }
			bool bOverride_DOF_ModulateBlurColor(bool val) { mixin(MSBPS!(0, 0x20000)()); }
			bool bOverride_DOF_MaxFarBlurAmount() { mixin(MGBPS!(0, 0x10000)()); }
			bool bOverride_DOF_MaxFarBlurAmount(bool val) { mixin(MSBPS!(0, 0x10000)()); }
			bool bOverride_DOF_MinBlurAmount() { mixin(MGBPS!(0, 0x8000)()); }
			bool bOverride_DOF_MinBlurAmount(bool val) { mixin(MSBPS!(0, 0x8000)()); }
			bool bOverride_DOF_MaxNearBlurAmount() { mixin(MGBPS!(0, 0x4000)()); }
			bool bOverride_DOF_MaxNearBlurAmount(bool val) { mixin(MSBPS!(0, 0x4000)()); }
			bool bOverride_DOF_BlurBloomKernelSize() { mixin(MGBPS!(0, 0x2000)()); }
			bool bOverride_DOF_BlurBloomKernelSize(bool val) { mixin(MSBPS!(0, 0x2000)()); }
			bool bOverride_DOF_BlurKernelSize() { mixin(MGBPS!(0, 0x1000)()); }
			bool bOverride_DOF_BlurKernelSize(bool val) { mixin(MSBPS!(0, 0x1000)()); }
			bool bOverride_DOF_FalloffExponent() { mixin(MGBPS!(0, 0x800)()); }
			bool bOverride_DOF_FalloffExponent(bool val) { mixin(MSBPS!(0, 0x800)()); }
			bool bOverride_Bloom_InterpolationDuration() { mixin(MGBPS!(0, 0x400)()); }
			bool bOverride_Bloom_InterpolationDuration(bool val) { mixin(MSBPS!(0, 0x400)()); }
			bool bOverride_Bloom_ScreenBlendThreshold() { mixin(MGBPS!(0, 0x200)()); }
			bool bOverride_Bloom_ScreenBlendThreshold(bool val) { mixin(MSBPS!(0, 0x200)()); }
			bool bOverride_Bloom_Tint() { mixin(MGBPS!(0, 0x100)()); }
			bool bOverride_Bloom_Tint(bool val) { mixin(MSBPS!(0, 0x100)()); }
			bool bOverride_Bloom_Threshold() { mixin(MGBPS!(0, 0x80)()); }
			bool bOverride_Bloom_Threshold(bool val) { mixin(MSBPS!(0, 0x80)()); }
			bool bOverride_Bloom_Scale() { mixin(MGBPS!(0, 0x40)()); }
			bool bOverride_Bloom_Scale(bool val) { mixin(MSBPS!(0, 0x40)()); }
			bool bOverride_OverrideRimShaderColor() { mixin(MGBPS!(0, 0x20)()); }
			bool bOverride_OverrideRimShaderColor(bool val) { mixin(MSBPS!(0, 0x20)()); }
			bool bOverride_AllowAmbientOcclusion() { mixin(MGBPS!(0, 0x10)()); }
			bool bOverride_AllowAmbientOcclusion(bool val) { mixin(MSBPS!(0, 0x10)()); }
			bool bOverride_EnableSceneEffect() { mixin(MGBPS!(0, 0x8)()); }
			bool bOverride_EnableSceneEffect(bool val) { mixin(MSBPS!(0, 0x8)()); }
			bool bOverride_EnableMotionBlur() { mixin(MGBPS!(0, 0x4)()); }
			bool bOverride_EnableMotionBlur(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool bOverride_EnableDOF() { mixin(MGBPS!(0, 0x2)()); }
			bool bOverride_EnableDOF(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bOverride_EnableBloom() { mixin(MGBPS!(0, 0x1)()); }
			bool bOverride_EnableBloom(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			PostProcessVolume NextLowerPriorityVolume() { mixin(MGPC!("PostProcessVolume", 744)()); }
			// WARNING: Property 'Settings' has the same name as a defined type!
			float Priority() { mixin(MGPC!("float", 520)()); }
		}
		bool bEnabled() { mixin(MGBPC!(748, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(748, 0x1)()); }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}

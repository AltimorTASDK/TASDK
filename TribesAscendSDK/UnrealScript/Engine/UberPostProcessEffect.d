module UnrealScript.Engine.UberPostProcessEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DOFBloomMotionBlurEffect;

extern(C++) interface UberPostProcessEffect : DOFBloomMotionBlurEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UberPostProcessEffect")); }
	private static __gshared UberPostProcessEffect mDefaultProperties;
	@property final static UberPostProcessEffect DefaultProperties() { mixin(MGDPC("UberPostProcessEffect", "UberPostProcessEffect Engine.Default__UberPostProcessEffect")); }
	enum ETonemapperType : ubyte
	{
		Tonemapper_Off = 0,
		Tonemapper_Filmic = 1,
		Tonemapper_Customizable = 2,
		Tonemapper_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float SceneHDRTonemapperScale() { mixin(MGPC("float", 300)); }
			float BloomSizeScaleLarge() { mixin(MGPC("float", 296)); }
			float BloomSizeScaleMedium() { mixin(MGPC("float", 292)); }
			float BloomSizeScaleSmall() { mixin(MGPC("float", 288)); }
			float BloomWeightLarge() { mixin(MGPC("float", 284)); }
			float BloomWeightMedium() { mixin(MGPC("float", 280)); }
			float BloomWeightSmall() { mixin(MGPC("float", 276)); }
			float SceneImageGrainScale() { mixin(MGPC("float", 272)); }
			float MotionBlurSoftEdgeKernelSize() { mixin(MGPC("float", 264)); }
			float TonemapperScale() { mixin(MGPC("float", 260)); }
			float TonemapperToeFactor() { mixin(MGPC("float", 256)); }
			float TonemapperRange() { mixin(MGPC("float", 252)); }
			UberPostProcessEffect.ETonemapperType TonemapperType() { mixin(MGPC("UberPostProcessEffect.ETonemapperType", 248)); }
			Vector SceneShadows() { mixin(MGPC("Vector", 196)); }
			Vector SceneColorize() { mixin(MGPC("Vector", 236)); }
			float SceneDesaturation() { mixin(MGPC("float", 232)); }
			Vector SceneMidTones() { mixin(MGPC("Vector", 220)); }
			Vector SceneHighLights() { mixin(MGPC("Vector", 208)); }
		}
		bool bEnableHDRTonemapper() { mixin(MGBPC(268, 0x2)); }
		bool bEnableHDRTonemapper(bool val) { mixin(MSBPC(268, 0x2)); }
		bool bEnableImageGrain() { mixin(MGBPC(268, 0x1)); }
		bool bEnableImageGrain(bool val) { mixin(MSBPC(268, 0x1)); }
	}
}

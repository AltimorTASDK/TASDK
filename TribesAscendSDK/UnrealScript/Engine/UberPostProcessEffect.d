module UnrealScript.Engine.UberPostProcessEffect;

import ScriptClasses;
import UnrealScript.Engine.DOFBloomMotionBlurEffect;

extern(C++) interface UberPostProcessEffect : DOFBloomMotionBlurEffect
{
	enum ETonemapperType : ubyte
	{
		Tonemapper_Off = 0,
		Tonemapper_Filmic = 1,
		Tonemapper_Customizable = 2,
		Tonemapper_MAX = 3,
	}
	public @property final auto ref float SceneHDRTonemapperScale() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float BloomSizeScaleLarge() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float BloomSizeScaleMedium() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float BloomSizeScaleSmall() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float BloomWeightLarge() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float BloomWeightMedium() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float BloomWeightSmall() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float SceneImageGrainScale() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final bool bEnableHDRTonemapper() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
	public @property final bool bEnableHDRTonemapper(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
	public @property final bool bEnableImageGrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
	public @property final bool bEnableImageGrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	public @property final auto ref float MotionBlurSoftEdgeKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float TonemapperScale() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float TonemapperToeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float TonemapperRange() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UberPostProcessEffect.ETonemapperType TonemapperType() { return *cast(UberPostProcessEffect.ETonemapperType*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref Vector SceneShadows() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref Vector SceneColorize() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float SceneDesaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref Vector SceneMidTones() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref Vector SceneHighLights() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
}

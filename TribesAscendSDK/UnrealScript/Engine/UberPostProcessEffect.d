module UnrealScript.Engine.UberPostProcessEffect;

import ScriptClasses;
import UnrealScript.Engine.DOFBloomMotionBlurEffect;

extern(C++) interface UberPostProcessEffect : DOFBloomMotionBlurEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UberPostProcessEffect")); }
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
			float SceneHDRTonemapperScale() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
			float BloomSizeScaleLarge() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			float BloomSizeScaleMedium() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float BloomSizeScaleSmall() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float BloomWeightLarge() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float BloomWeightMedium() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float BloomWeightSmall() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			float SceneImageGrainScale() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float MotionBlurSoftEdgeKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float TonemapperScale() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float TonemapperToeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float TonemapperRange() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			UberPostProcessEffect.ETonemapperType TonemapperType() { return *cast(UberPostProcessEffect.ETonemapperType*)(cast(size_t)cast(void*)this + 248); }
			Vector SceneShadows() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
			Vector SceneColorize() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
			float SceneDesaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			Vector SceneMidTones() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
			Vector SceneHighLights() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
		}
		bool bEnableHDRTonemapper() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
		bool bEnableHDRTonemapper(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
		bool bEnableImageGrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bEnableImageGrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	}
}

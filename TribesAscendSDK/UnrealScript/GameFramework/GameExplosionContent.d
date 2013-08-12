module UnrealScript.GameFramework.GameExplosionContent;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FogVolumeSphericalDensityInfo;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.CameraShake;

extern(C++) interface GameExplosionContent : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameExplosionContent")); }
	@property final
	{
		auto ref
		{
			FogVolumeSphericalDensityInfo FogVolumeArchetype() { return *cast(FogVolumeSphericalDensityInfo*)(cast(size_t)cast(void*)this + 128); }
			ParticleSystem ParticleEmitterTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 124); }
			float ExploRadialBlurMaxBlur() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float ExploRadialBlurFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float ExploLightFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float CameraLensEffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			ScriptClass CameraLensEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 96); }
			float CamShakeFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float CamShakeOuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float CamShakeInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			CameraShake CamShake_Rear() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 80); }
			CameraShake CamShake_Right() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 76); }
			CameraShake CamShake_Left() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 72); }
			CameraShake CamShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 68); }
			SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bOrientCameraShakeTowardsEpicenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bOrientCameraShakeTowardsEpicenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bAutoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bAutoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}

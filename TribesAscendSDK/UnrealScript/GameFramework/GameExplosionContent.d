module UnrealScript.GameFramework.GameExplosionContent;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FogVolumeSphericalDensityInfo;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.CameraShake;

extern(C++) interface GameExplosionContent : UObject
{
	public @property final auto ref FogVolumeSphericalDensityInfo FogVolumeArchetype() { return *cast(FogVolumeSphericalDensityInfo*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ParticleSystem ParticleEmitterTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float ExploRadialBlurMaxBlur() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float ExploRadialBlurFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float ExploLightFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float CameraLensEffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptClass CameraLensEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float CamShakeFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float CamShakeOuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float CamShakeInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref CameraShake CamShake_Rear() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref CameraShake CamShake_Right() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref CameraShake CamShake_Left() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref CameraShake CamShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bOrientCameraShakeTowardsEpicenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bOrientCameraShakeTowardsEpicenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bAutoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bAutoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}

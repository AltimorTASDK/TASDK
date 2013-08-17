module UnrealScript.GameFramework.GameExplosionContent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FogVolumeSphericalDensityInfo;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.CameraShake;

extern(C++) interface GameExplosionContent : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameExplosionContent")()); }
	private static __gshared GameExplosionContent mDefaultProperties;
	@property final static GameExplosionContent DefaultProperties() { mixin(MGDPC!(GameExplosionContent, "GameExplosionContent GameFramework.Default__GameExplosionContent")()); }
	@property final
	{
		auto ref
		{
			FogVolumeSphericalDensityInfo FogVolumeArchetype() { mixin(MGPC!(FogVolumeSphericalDensityInfo, 128)()); }
			ParticleSystem ParticleEmitterTemplate() { mixin(MGPC!(ParticleSystem, 124)()); }
			float ExploRadialBlurMaxBlur() { mixin(MGPC!(float, 120)()); }
			float ExploRadialBlurFadeOutTime() { mixin(MGPC!(float, 116)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ExploRadialBlur'!
			float ExploLightFadeOutTime() { mixin(MGPC!(float, 108)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ExploLight'!
			float CameraLensEffectRadius() { mixin(MGPC!(float, 100)()); }
			ScriptClass CameraLensEffect() { mixin(MGPC!(ScriptClass, 96)()); }
			float CamShakeFalloff() { mixin(MGPC!(float, 92)()); }
			float CamShakeOuterRadius() { mixin(MGPC!(float, 88)()); }
			float CamShakeInnerRadius() { mixin(MGPC!(float, 84)()); }
			CameraShake CamShake_Rear() { mixin(MGPC!(CameraShake, 80)()); }
			CameraShake CamShake_Right() { mixin(MGPC!(CameraShake, 76)()); }
			CameraShake CamShake_Left() { mixin(MGPC!(CameraShake, 72)()); }
			CameraShake CamShake() { mixin(MGPC!(CameraShake, 68)()); }
			SoundCue ExplosionSound() { mixin(MGPC!(SoundCue, 64)()); }
		}
		bool bOrientCameraShakeTowardsEpicenter() { mixin(MGBPC!(60, 0x2)()); }
		bool bOrientCameraShakeTowardsEpicenter(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bAutoControllerVibration() { mixin(MGBPC!(60, 0x1)()); }
		bool bAutoControllerVibration(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
}

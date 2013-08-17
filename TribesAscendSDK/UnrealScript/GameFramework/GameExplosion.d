module UnrealScript.GameFramework.GameExplosion;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface GameExplosion : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameExplosion")()); }
	private static __gshared GameExplosion mDefaultProperties;
	@property final static GameExplosion DefaultProperties() { mixin(MGDPC!(GameExplosion, "GameExplosion GameFramework.Default__GameExplosion")()); }
	@property final
	{
		auto ref
		{
			float CameraLensEffectRadius() { mixin(MGPC!(float, 224)()); }
			ScriptClass CameraLensEffect() { mixin(MGPC!(ScriptClass, 220)()); }
			float CamShakeFalloff() { mixin(MGPC!(float, 216)()); }
			float CamShakeOuterRadius() { mixin(MGPC!(float, 212)()); }
			float CamShakeInnerRadius() { mixin(MGPC!(float, 208)()); }
			CameraShake CamShake_Rear() { mixin(MGPC!(CameraShake, 204)()); }
			CameraShake CamShake_Right() { mixin(MGPC!(CameraShake, 200)()); }
			CameraShake CamShake_Left() { mixin(MGPC!(CameraShake, 196)()); }
			CameraShake CamShake() { mixin(MGPC!(CameraShake, 192)()); }
			float FracturePartVel() { mixin(MGPC!(float, 188)()); }
			float FractureMeshRadius() { mixin(MGPC!(float, 184)()); }
			float ExploRadialBlurMaxBlur() { mixin(MGPC!(float, 180)()); }
			float ExploRadialBlurFadeOutTime() { mixin(MGPC!(float, 176)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ExploRadialBlur'!
			float ExploLightFadeOutTime() { mixin(MGPC!(float, 168)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ExploLight'!
			SoundCue ExplosionSound() { mixin(MGPC!(SoundCue, 160)()); }
			Vector HitNormal() { mixin(MGPC!(Vector, 148)()); }
			Vector HitLocation() { mixin(MGPC!(Vector, 136)()); }
			Actor HitActor() { mixin(MGPC!(Actor, 132)()); }
			float ExplosionEmitterScale() { mixin(MGPC!(float, 128)()); }
			ParticleSystem ParticleEmitterTemplate() { mixin(MGPC!(ParticleSystem, 124)()); }
			float MomentumTransferScale() { mixin(MGPC!(float, 120)()); }
			UObject.Vector2D CringeDuration() { mixin(MGPC!(UObject.Vector2D, 112)()); }
			float CringeRadius() { mixin(MGPC!(float, 108)()); }
			float KnockDownStrength() { mixin(MGPC!(float, 104)()); }
			float KnockDownRadius() { mixin(MGPC!(float, 100)()); }
			ScriptClass MyDamageType() { mixin(MGPC!(ScriptClass, 96)()); }
			ScriptClass ActorClassToIgnoreForKnockdownsAndCringes() { mixin(MGPC!(ScriptClass, 92)()); }
			ScriptClass ActorClassToIgnoreForDamage() { mixin(MGPC!(ScriptClass, 88)()); }
			Actor ActorToIgnoreForDamage() { mixin(MGPC!(Actor, 84)()); }
			float DamageFalloffExponent() { mixin(MGPC!(float, 80)()); }
			float DamageRadius() { mixin(MGPC!(float, 76)()); }
			float Damage() { mixin(MGPC!(float, 72)()); }
			float DamageDelay() { mixin(MGPC!(float, 68)()); }
			float DirectionalExplosionAngleDeg() { mixin(MGPC!(float, 64)()); }
		}
		bool bAutoControllerVibration() { mixin(MGBPC!(60, 0x400)()); }
		bool bAutoControllerVibration(bool val) { mixin(MSBPC!(60, 0x400)()); }
		bool bOrientCameraShakeTowardsEpicenter() { mixin(MGBPC!(60, 0x200)()); }
		bool bOrientCameraShakeTowardsEpicenter(bool val) { mixin(MSBPC!(60, 0x200)()); }
		bool bUseOverlapCheck() { mixin(MGBPC!(60, 0x100)()); }
		bool bUseOverlapCheck(bool val) { mixin(MSBPC!(60, 0x100)()); }
		bool bUseMapSpecificValues() { mixin(MGBPC!(60, 0x80)()); }
		bool bUseMapSpecificValues(bool val) { mixin(MSBPC!(60, 0x80)()); }
		bool bParticleSystemIsBeingOverriddenDontUsePhysMatVersion() { mixin(MGBPC!(60, 0x40)()); }
		bool bParticleSystemIsBeingOverriddenDontUsePhysMatVersion(bool val) { mixin(MSBPC!(60, 0x40)()); }
		bool bAllowPerMaterialFX() { mixin(MGBPC!(60, 0x20)()); }
		bool bAllowPerMaterialFX(bool val) { mixin(MSBPC!(60, 0x20)()); }
		bool bCausesFracture() { mixin(MGBPC!(60, 0x10)()); }
		bool bCausesFracture(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool bAttachExplosionEmitterToAttachee() { mixin(MGBPC!(60, 0x8)()); }
		bool bAttachExplosionEmitterToAttachee(bool val) { mixin(MSBPC!(60, 0x8)()); }
		bool bFullDamageToAttachee() { mixin(MGBPC!(60, 0x4)()); }
		bool bFullDamageToAttachee(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool bAllowTeammateCringes() { mixin(MGBPC!(60, 0x2)()); }
		bool bAllowTeammateCringes(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bDirectionalExplosion() { mixin(MGBPC!(60, 0x1)()); }
		bool bDirectionalExplosion(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
}

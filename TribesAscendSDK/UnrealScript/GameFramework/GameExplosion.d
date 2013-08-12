module UnrealScript.GameFramework.GameExplosion;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface GameExplosion : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameExplosion")); }
	@property final
	{
		auto ref
		{
			float CameraLensEffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			ScriptClass CameraLensEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 220); }
			float CamShakeFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float CamShakeOuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float CamShakeInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			CameraShake CamShake_Rear() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 204); }
			CameraShake CamShake_Right() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 200); }
			CameraShake CamShake_Left() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 196); }
			CameraShake CamShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 192); }
			float FracturePartVel() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float FractureMeshRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float ExploRadialBlurMaxBlur() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float ExploRadialBlurFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float ExploLightFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 160); }
			Vector HitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
			Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 136); }
			Actor HitActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 132); }
			float ExplosionEmitterScale() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			ParticleSystem ParticleEmitterTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 124); }
			float MomentumTransferScale() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			UObject.Vector2D CringeDuration() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 112); }
			float CringeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float KnockDownStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float KnockDownRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			ScriptClass MyDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 96); }
			ScriptClass ActorClassToIgnoreForKnockdownsAndCringes() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
			ScriptClass ActorClassToIgnoreForDamage() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 88); }
			Actor ActorToIgnoreForDamage() { return *cast(Actor*)(cast(size_t)cast(void*)this + 84); }
			float DamageFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float DamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float Damage() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			float DamageDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float DirectionalExplosionAngleDeg() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bAutoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
		bool bAutoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
		bool bOrientCameraShakeTowardsEpicenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
		bool bOrientCameraShakeTowardsEpicenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
		bool bUseOverlapCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
		bool bUseOverlapCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
		bool bUseMapSpecificValues() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
		bool bUseMapSpecificValues(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
		bool bParticleSystemIsBeingOverriddenDontUsePhysMatVersion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
		bool bParticleSystemIsBeingOverriddenDontUsePhysMatVersion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
		bool bAllowPerMaterialFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
		bool bAllowPerMaterialFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
		bool bCausesFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool bCausesFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool bAttachExplosionEmitterToAttachee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bAttachExplosionEmitterToAttachee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool bFullDamageToAttachee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bFullDamageToAttachee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bAllowTeammateCringes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bAllowTeammateCringes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bDirectionalExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bDirectionalExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}

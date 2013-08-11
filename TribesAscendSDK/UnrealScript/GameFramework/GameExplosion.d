module UnrealScript.GameFramework.GameExplosion;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface GameExplosion : UObject
{
	public @property final auto ref float CameraLensEffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptClass CameraLensEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float CamShakeFalloff() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float CamShakeOuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float CamShakeInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref CameraShake CamShake_Rear() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref CameraShake CamShake_Right() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref CameraShake CamShake_Left() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref CameraShake CamShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float FracturePartVel() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float FractureMeshRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float ExploRadialBlurMaxBlur() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float ExploRadialBlurFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float ExploLightFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref Vector HitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref Actor HitActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float ExplosionEmitterScale() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ParticleSystem ParticleEmitterTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float MomentumTransferScale() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref UObject.Vector2D CringeDuration() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float CringeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float KnockDownStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float KnockDownRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptClass MyDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptClass ActorClassToIgnoreForKnockdownsAndCringes() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptClass ActorClassToIgnoreForDamage() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref Actor ActorToIgnoreForDamage() { return *cast(Actor*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float DamageFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float DamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float Damage() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float DamageDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float DirectionalExplosionAngleDeg() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bAutoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
	public @property final bool bAutoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
	public @property final bool bOrientCameraShakeTowardsEpicenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
	public @property final bool bOrientCameraShakeTowardsEpicenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
	public @property final bool bUseOverlapCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
	public @property final bool bUseOverlapCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
	public @property final bool bUseMapSpecificValues() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
	public @property final bool bUseMapSpecificValues(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
	public @property final bool bParticleSystemIsBeingOverriddenDontUsePhysMatVersion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
	public @property final bool bParticleSystemIsBeingOverriddenDontUsePhysMatVersion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
	public @property final bool bAllowPerMaterialFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
	public @property final bool bAllowPerMaterialFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
	public @property final bool bCausesFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool bCausesFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool bAttachExplosionEmitterToAttachee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bAttachExplosionEmitterToAttachee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bFullDamageToAttachee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bFullDamageToAttachee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bAllowTeammateCringes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bAllowTeammateCringes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bDirectionalExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bDirectionalExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}

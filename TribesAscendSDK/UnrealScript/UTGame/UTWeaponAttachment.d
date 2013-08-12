module UnrealScript.UTGame.UTWeaponAttachment;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;

extern(C++) interface UTWeaponAttachment : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeaponAttachment")); }
	private static __gshared UTWeaponAttachment mDefaultProperties;
	@property final static UTWeaponAttachment DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTWeaponAttachment)("UTWeaponAttachment UTGame.Default__UTWeaponAttachment")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCheckToForceRefPose;
			ScriptFunction mCreateOverlayMesh;
			ScriptFunction mSetSkin;
			ScriptFunction mSetMuzzleFlashParams;
			ScriptFunction mAttachTo;
			ScriptFunction mSetPuttingDownWeapon;
			ScriptFunction mDetachFrom;
			ScriptFunction mMuzzleFlashTimer;
			ScriptFunction mCauseMuzzleFlash;
			ScriptFunction mStopMuzzleFlash;
			ScriptFunction mFirstPersonFireEffects;
			ScriptFunction mStopFirstPersonFireEffects;
			ScriptFunction mThirdPersonFireEffects;
			ScriptFunction mStopThirdPersonFireEffects;
			ScriptFunction mGetImpactEffect;
			ScriptFunction mAllowImpactEffects;
			ScriptFunction mSetImpactedActor;
			ScriptFunction mPlayImpactEffects;
			ScriptFunction mCheckBulletWhip;
			ScriptFunction mSetWeaponOverlayFlags;
			ScriptFunction mChangeVisibility;
			ScriptFunction mFireModeUpdated;
			ScriptFunction mGetEffectLocation;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.PostBeginPlay")); }
			ScriptFunction CheckToForceRefPose() { return mCheckToForceRefPose ? mCheckToForceRefPose : (mCheckToForceRefPose = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.CheckToForceRefPose")); }
			ScriptFunction CreateOverlayMesh() { return mCreateOverlayMesh ? mCreateOverlayMesh : (mCreateOverlayMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.CreateOverlayMesh")); }
			ScriptFunction SetSkin() { return mSetSkin ? mSetSkin : (mSetSkin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.SetSkin")); }
			ScriptFunction SetMuzzleFlashParams() { return mSetMuzzleFlashParams ? mSetMuzzleFlashParams : (mSetMuzzleFlashParams = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.SetMuzzleFlashParams")); }
			ScriptFunction AttachTo() { return mAttachTo ? mAttachTo : (mAttachTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.AttachTo")); }
			ScriptFunction SetPuttingDownWeapon() { return mSetPuttingDownWeapon ? mSetPuttingDownWeapon : (mSetPuttingDownWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.SetPuttingDownWeapon")); }
			ScriptFunction DetachFrom() { return mDetachFrom ? mDetachFrom : (mDetachFrom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.DetachFrom")); }
			ScriptFunction MuzzleFlashTimer() { return mMuzzleFlashTimer ? mMuzzleFlashTimer : (mMuzzleFlashTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.MuzzleFlashTimer")); }
			ScriptFunction CauseMuzzleFlash() { return mCauseMuzzleFlash ? mCauseMuzzleFlash : (mCauseMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.CauseMuzzleFlash")); }
			ScriptFunction StopMuzzleFlash() { return mStopMuzzleFlash ? mStopMuzzleFlash : (mStopMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.StopMuzzleFlash")); }
			ScriptFunction FirstPersonFireEffects() { return mFirstPersonFireEffects ? mFirstPersonFireEffects : (mFirstPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.FirstPersonFireEffects")); }
			ScriptFunction StopFirstPersonFireEffects() { return mStopFirstPersonFireEffects ? mStopFirstPersonFireEffects : (mStopFirstPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.StopFirstPersonFireEffects")); }
			ScriptFunction ThirdPersonFireEffects() { return mThirdPersonFireEffects ? mThirdPersonFireEffects : (mThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.ThirdPersonFireEffects")); }
			ScriptFunction StopThirdPersonFireEffects() { return mStopThirdPersonFireEffects ? mStopThirdPersonFireEffects : (mStopThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.StopThirdPersonFireEffects")); }
			ScriptFunction GetImpactEffect() { return mGetImpactEffect ? mGetImpactEffect : (mGetImpactEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.GetImpactEffect")); }
			ScriptFunction AllowImpactEffects() { return mAllowImpactEffects ? mAllowImpactEffects : (mAllowImpactEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.AllowImpactEffects")); }
			ScriptFunction SetImpactedActor() { return mSetImpactedActor ? mSetImpactedActor : (mSetImpactedActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.SetImpactedActor")); }
			ScriptFunction PlayImpactEffects() { return mPlayImpactEffects ? mPlayImpactEffects : (mPlayImpactEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.PlayImpactEffects")); }
			ScriptFunction CheckBulletWhip() { return mCheckBulletWhip ? mCheckBulletWhip : (mCheckBulletWhip = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.CheckBulletWhip")); }
			ScriptFunction SetWeaponOverlayFlags() { return mSetWeaponOverlayFlags ? mSetWeaponOverlayFlags : (mSetWeaponOverlayFlags = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.SetWeaponOverlayFlags")); }
			ScriptFunction ChangeVisibility() { return mChangeVisibility ? mChangeVisibility : (mChangeVisibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.ChangeVisibility")); }
			ScriptFunction FireModeUpdated() { return mFireModeUpdated ? mFireModeUpdated : (mFireModeUpdated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.FireModeUpdated")); }
			ScriptFunction GetEffectLocation() { return mGetEffectLocation ? mGetEffectLocation : (mGetEffectLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponAttachment.GetEffectLocation")); }
		}
	}
	@property final
	{
		auto ref
		{
			float MaxFireEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 540); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) AltImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 552); }
			UTPawn.EWeapAnimType WeapAnimType() { return *cast(UTPawn.EWeapAnimType*)(cast(size_t)cast(void*)this + 700); }
			ScriptName AltFireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 692); }
			ScriptName FireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 684); }
			float DistFactorForRefPose() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
			float MaxDecalRangeSq() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 672); }
			float MaxImpactEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 664); }
			SoundCue BulletWhip() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 660); }
			UDKPawn.MaterialImpactEffect DefaultAltImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 612); }
			UDKPawn.MaterialImpactEffect DefaultImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 564); }
			ScriptName AttachmentSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 532); }
			float MuzzleFlashDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 516); }
			UObject.Color MuzzleFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 508); }
			ParticleSystem MuzzleFlashAltPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 504); }
			ParticleSystem MuzzleFlashPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 500); }
			ScriptName MuzzleFlashSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 488); }
			ScriptClass SplashEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bMakeSplash() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x8) != 0; }
		bool bMakeSplash(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x8; } return val; }
		bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x4) != 0; }
		bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x4; } return val; }
		bool bAlignToSurfaceNormal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x2) != 0; }
		bool bAlignToSurfaceNormal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x2; } return val; }
		bool bMuzzleFlashPSCLoops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x1) != 0; }
		bool bMuzzleFlashPSCLoops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void CheckToForceRefPose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckToForceRefPose, cast(void*)0, cast(void*)0);
	}
	void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateOverlayMesh, cast(void*)0, cast(void*)0);
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkin, params.ptr, cast(void*)0);
	}
	void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMuzzleFlashParams, params.ptr, cast(void*)0);
	}
	void AttachTo(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachTo, params.ptr, cast(void*)0);
	}
	void SetPuttingDownWeapon(bool bNowPuttingDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDown;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPuttingDownWeapon, params.ptr, cast(void*)0);
	}
	void DetachFrom(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachFrom, params.ptr, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MuzzleFlashTimer, cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void FirstPersonFireEffects(Weapon PawnWeapon, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = PawnWeapon;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FirstPersonFireEffects, params.ptr, cast(void*)0);
	}
	void StopFirstPersonFireEffects(Weapon PawnWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = PawnWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFirstPersonFireEffects, params.ptr, cast(void*)0);
	}
	void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThirdPersonFireEffects, params.ptr, cast(void*)0);
	}
	void StopThirdPersonFireEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopThirdPersonFireEffects, cast(void*)0, cast(void*)0);
	}
	UDKPawn.MaterialImpactEffect GetImpactEffect(PhysicalMaterial HitMaterial)
	{
		ubyte params[52];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetImpactEffect, params.ptr, cast(void*)0);
		return *cast(UDKPawn.MaterialImpactEffect*)&params[4];
	}
	bool AllowImpactEffects(Actor HitActor, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowImpactEffects, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void SetImpactedActor(Actor HitActor, Vector HitLocation, Vector HitNormal, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetImpactedActor, params.ptr, cast(void*)0);
	}
	void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayImpactEffects, params.ptr, cast(void*)0);
	}
	void CheckBulletWhip(Vector FireDir, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = FireDir;
		*cast(Vector*)&params[12] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckBulletWhip, params.ptr, cast(void*)0);
	}
	void SetWeaponOverlayFlags(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponOverlayFlags, params.ptr, cast(void*)0);
	}
	void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeVisibility, params.ptr, cast(void*)0);
	}
	void FireModeUpdated(ubyte FiringMode, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FiringMode;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireModeUpdated, params.ptr, cast(void*)0);
	}
	Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEffectLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
}

module UnrealScript.UTGame.UTWeaponAttachment;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTWeaponAttachment")()); }
	private static __gshared UTWeaponAttachment mDefaultProperties;
	@property final static UTWeaponAttachment DefaultProperties() { mixin(MGDPC!(UTWeaponAttachment, "UTWeaponAttachment UTGame.Default__UTWeaponAttachment")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTWeaponAttachment.PostBeginPlay")()); }
			ScriptFunction CheckToForceRefPose() { mixin(MGF!("mCheckToForceRefPose", "Function UTGame.UTWeaponAttachment.CheckToForceRefPose")()); }
			ScriptFunction CreateOverlayMesh() { mixin(MGF!("mCreateOverlayMesh", "Function UTGame.UTWeaponAttachment.CreateOverlayMesh")()); }
			ScriptFunction SetSkin() { mixin(MGF!("mSetSkin", "Function UTGame.UTWeaponAttachment.SetSkin")()); }
			ScriptFunction SetMuzzleFlashParams() { mixin(MGF!("mSetMuzzleFlashParams", "Function UTGame.UTWeaponAttachment.SetMuzzleFlashParams")()); }
			ScriptFunction AttachTo() { mixin(MGF!("mAttachTo", "Function UTGame.UTWeaponAttachment.AttachTo")()); }
			ScriptFunction SetPuttingDownWeapon() { mixin(MGF!("mSetPuttingDownWeapon", "Function UTGame.UTWeaponAttachment.SetPuttingDownWeapon")()); }
			ScriptFunction DetachFrom() { mixin(MGF!("mDetachFrom", "Function UTGame.UTWeaponAttachment.DetachFrom")()); }
			ScriptFunction MuzzleFlashTimer() { mixin(MGF!("mMuzzleFlashTimer", "Function UTGame.UTWeaponAttachment.MuzzleFlashTimer")()); }
			ScriptFunction CauseMuzzleFlash() { mixin(MGF!("mCauseMuzzleFlash", "Function UTGame.UTWeaponAttachment.CauseMuzzleFlash")()); }
			ScriptFunction StopMuzzleFlash() { mixin(MGF!("mStopMuzzleFlash", "Function UTGame.UTWeaponAttachment.StopMuzzleFlash")()); }
			ScriptFunction FirstPersonFireEffects() { mixin(MGF!("mFirstPersonFireEffects", "Function UTGame.UTWeaponAttachment.FirstPersonFireEffects")()); }
			ScriptFunction StopFirstPersonFireEffects() { mixin(MGF!("mStopFirstPersonFireEffects", "Function UTGame.UTWeaponAttachment.StopFirstPersonFireEffects")()); }
			ScriptFunction ThirdPersonFireEffects() { mixin(MGF!("mThirdPersonFireEffects", "Function UTGame.UTWeaponAttachment.ThirdPersonFireEffects")()); }
			ScriptFunction StopThirdPersonFireEffects() { mixin(MGF!("mStopThirdPersonFireEffects", "Function UTGame.UTWeaponAttachment.StopThirdPersonFireEffects")()); }
			ScriptFunction GetImpactEffect() { mixin(MGF!("mGetImpactEffect", "Function UTGame.UTWeaponAttachment.GetImpactEffect")()); }
			ScriptFunction AllowImpactEffects() { mixin(MGF!("mAllowImpactEffects", "Function UTGame.UTWeaponAttachment.AllowImpactEffects")()); }
			ScriptFunction SetImpactedActor() { mixin(MGF!("mSetImpactedActor", "Function UTGame.UTWeaponAttachment.SetImpactedActor")()); }
			ScriptFunction PlayImpactEffects() { mixin(MGF!("mPlayImpactEffects", "Function UTGame.UTWeaponAttachment.PlayImpactEffects")()); }
			ScriptFunction CheckBulletWhip() { mixin(MGF!("mCheckBulletWhip", "Function UTGame.UTWeaponAttachment.CheckBulletWhip")()); }
			ScriptFunction SetWeaponOverlayFlags() { mixin(MGF!("mSetWeaponOverlayFlags", "Function UTGame.UTWeaponAttachment.SetWeaponOverlayFlags")()); }
			ScriptFunction ChangeVisibility() { mixin(MGF!("mChangeVisibility", "Function UTGame.UTWeaponAttachment.ChangeVisibility")()); }
			ScriptFunction FireModeUpdated() { mixin(MGF!("mFireModeUpdated", "Function UTGame.UTWeaponAttachment.FireModeUpdated")()); }
			ScriptFunction GetEffectLocation() { mixin(MGF!("mGetEffectLocation", "Function UTGame.UTWeaponAttachment.GetEffectLocation")()); }
		}
	}
	static struct CurrentlyAttached
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeaponAttachment.CurrentlyAttached")()); }
	}
	@property final
	{
		auto ref
		{
			float MaxFireEffectDistance() { mixin(MGPC!("float", 668)()); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { mixin(MGPC!("ScriptArray!(UDKPawn.MaterialImpactEffect)", 540)()); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) AltImpactEffects() { mixin(MGPC!("ScriptArray!(UDKPawn.MaterialImpactEffect)", 552)()); }
			UTPawn.EWeapAnimType WeapAnimType() { mixin(MGPC!("UTPawn.EWeapAnimType", 700)()); }
			ScriptName AltFireAnim() { mixin(MGPC!("ScriptName", 692)()); }
			ScriptName FireAnim() { mixin(MGPC!("ScriptName", 684)()); }
			float DistFactorForRefPose() { mixin(MGPC!("float", 680)()); }
			float MaxDecalRangeSq() { mixin(MGPC!("float", 676)()); }
			ScriptClass WeaponClass() { mixin(MGPC!("ScriptClass", 672)()); }
			float MaxImpactEffectDistance() { mixin(MGPC!("float", 664)()); }
			SoundCue BulletWhip() { mixin(MGPC!("SoundCue", 660)()); }
			UDKPawn.MaterialImpactEffect DefaultAltImpactEffect() { mixin(MGPC!("UDKPawn.MaterialImpactEffect", 612)()); }
			UDKPawn.MaterialImpactEffect DefaultImpactEffect() { mixin(MGPC!("UDKPawn.MaterialImpactEffect", 564)()); }
			ScriptName AttachmentSocket() { mixin(MGPC!("ScriptName", 532)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OwnerMesh'!
			float MuzzleFlashDuration() { mixin(MGPC!("float", 524)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MuzzleFlashLight'!
			ScriptClass MuzzleFlashLightClass() { mixin(MGPC!("ScriptClass", 516)()); }
			UObject.Color MuzzleFlashColor() { mixin(MGPC!("UObject.Color", 508)()); }
			ParticleSystem MuzzleFlashAltPSCTemplate() { mixin(MGPC!("ParticleSystem", 504)()); }
			ParticleSystem MuzzleFlashPSCTemplate() { mixin(MGPC!("ParticleSystem", 500)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MuzzleFlashPSC'!
			ScriptName MuzzleFlashSocket() { mixin(MGPC!("ScriptName", 488)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OverlayMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Mesh'!
			ScriptClass SplashEffect() { mixin(MGPC!("ScriptClass", 476)()); }
		}
		bool bMakeSplash() { mixin(MGBPC!(512, 0x8)()); }
		bool bMakeSplash(bool val) { mixin(MSBPC!(512, 0x8)()); }
		bool bSuppressSounds() { mixin(MGBPC!(512, 0x4)()); }
		bool bSuppressSounds(bool val) { mixin(MSBPC!(512, 0x4)()); }
		bool bAlignToSurfaceNormal() { mixin(MGBPC!(512, 0x2)()); }
		bool bAlignToSurfaceNormal(bool val) { mixin(MSBPC!(512, 0x2)()); }
		bool bMuzzleFlashPSCLoops() { mixin(MGBPC!(512, 0x1)()); }
		bool bMuzzleFlashPSCLoops(bool val) { mixin(MSBPC!(512, 0x1)()); }
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

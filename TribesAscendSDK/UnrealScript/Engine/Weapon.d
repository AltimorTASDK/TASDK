module UnrealScript.Engine.Weapon;

import ScriptClasses;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.HUD;

extern(C++) interface Weapon : Inventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Weapon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTraceRange;
			ScriptFunction mHasAnyAmmo;
			ScriptFunction mGetAIRating;
			ScriptFunction mGetWeaponRating;
			ScriptFunction mTryPutDown;
			ScriptFunction mDenyClientWeaponSet;
			ScriptFunction mCanAttack;
			ScriptFunction mFireOnRelease;
			ScriptFunction mIsFiring;
			ScriptFunction mCanThrow;
			ScriptFunction mDestroyed;
			ScriptFunction mItemRemovedFromInvManager;
			ScriptFunction mHolderDied;
			ScriptFunction mDoOverrideNextWeapon;
			ScriptFunction mDoOverridePrevWeapon;
			ScriptFunction mDropFrom;
			ScriptFunction mClientWeaponThrown;
			ScriptFunction mDisplayDebug;
			ScriptFunction mGetWeaponDebug;
			ScriptFunction mGetPendingFireLength;
			ScriptFunction mPendingFire;
			ScriptFunction mConsumeAmmo;
			ScriptFunction mAddAmmo;
			ScriptFunction mHasAmmo;
			ScriptFunction mSetPendingFire;
			ScriptFunction mClearPendingFire;
			ScriptFunction mGetProjectileClass;
			ScriptFunction mAddSpread;
			ScriptFunction mMaxRange;
			ScriptFunction mGetWeaponAnimNodeSeq;
			ScriptFunction mPlayWeaponAnimation;
			ScriptFunction mStopWeaponAnimation;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mStopFireEffects;
			ScriptFunction mGetFireInterval;
			ScriptFunction mTimeWeaponFiring;
			ScriptFunction mRefireCheckTimer;
			ScriptFunction mTimeWeaponPutDown;
			ScriptFunction mTimeWeaponEquipping;
			ScriptFunction mActivate;
			ScriptFunction mPutDownWeapon;
			ScriptFunction mDenyPickupQuery;
			ScriptFunction mWeaponEmpty;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mClearFlashCount;
			ScriptFunction mSetFlashLocation;
			ScriptFunction mClearFlashLocation;
			ScriptFunction mAttachWeaponTo;
			ScriptFunction mDetachWeapon;
			ScriptFunction mClientGivenTo;
			ScriptFunction mClientWeaponSet;
			ScriptFunction mStartFire;
			ScriptFunction mServerStartFire;
			ScriptFunction mBeginFire;
			ScriptFunction mStopFire;
			ScriptFunction mServerStopFire;
			ScriptFunction mEndFire;
			ScriptFunction mForceEndFire;
			ScriptFunction mSendToFiringState;
			ScriptFunction mSetCurrentFireMode;
			ScriptFunction mFireModeUpdated;
			ScriptFunction mFireAmmunition;
			ScriptFunction mGetAdjustedAim;
			ScriptFunction mGetTraceOwner;
			ScriptFunction mCalcWeaponFire;
			ScriptFunction mPassThroughDamage;
			ScriptFunction mInstantFire;
			ScriptFunction mProcessInstantHit;
			ScriptFunction mProjectileFire;
			ScriptFunction mCustomFire;
			ScriptFunction mGetMuzzleLoc;
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mHandleFinishedFiring;
			ScriptFunction mNotifyWeaponFired;
			ScriptFunction mNotifyWeaponFinishedFiring;
			ScriptFunction mShouldRefire;
			ScriptFunction mStillFiring;
			ScriptFunction mWeaponIsDown;
			ScriptFunction mCacheAIController;
			ScriptFunction mGetTargetDistance;
		}
		public @property static final
		{
			ScriptFunction GetTraceRange() { return mGetTraceRange ? mGetTraceRange : (mGetTraceRange = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetTraceRange")); }
			ScriptFunction HasAnyAmmo() { return mHasAnyAmmo ? mHasAnyAmmo : (mHasAnyAmmo = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.HasAnyAmmo")); }
			ScriptFunction GetAIRating() { return mGetAIRating ? mGetAIRating : (mGetAIRating = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetAIRating")); }
			ScriptFunction GetWeaponRating() { return mGetWeaponRating ? mGetWeaponRating : (mGetWeaponRating = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetWeaponRating")); }
			ScriptFunction TryPutDown() { return mTryPutDown ? mTryPutDown : (mTryPutDown = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.TryPutDown")); }
			ScriptFunction DenyClientWeaponSet() { return mDenyClientWeaponSet ? mDenyClientWeaponSet : (mDenyClientWeaponSet = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DenyClientWeaponSet")); }
			ScriptFunction CanAttack() { return mCanAttack ? mCanAttack : (mCanAttack = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.CanAttack")); }
			ScriptFunction FireOnRelease() { return mFireOnRelease ? mFireOnRelease : (mFireOnRelease = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.FireOnRelease")); }
			ScriptFunction IsFiring() { return mIsFiring ? mIsFiring : (mIsFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.IsFiring")); }
			ScriptFunction CanThrow() { return mCanThrow ? mCanThrow : (mCanThrow = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.CanThrow")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.Destroyed")); }
			ScriptFunction ItemRemovedFromInvManager() { return mItemRemovedFromInvManager ? mItemRemovedFromInvManager : (mItemRemovedFromInvManager = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ItemRemovedFromInvManager")); }
			ScriptFunction HolderDied() { return mHolderDied ? mHolderDied : (mHolderDied = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.HolderDied")); }
			ScriptFunction DoOverrideNextWeapon() { return mDoOverrideNextWeapon ? mDoOverrideNextWeapon : (mDoOverrideNextWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DoOverrideNextWeapon")); }
			ScriptFunction DoOverridePrevWeapon() { return mDoOverridePrevWeapon ? mDoOverridePrevWeapon : (mDoOverridePrevWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DoOverridePrevWeapon")); }
			ScriptFunction DropFrom() { return mDropFrom ? mDropFrom : (mDropFrom = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DropFrom")); }
			ScriptFunction ClientWeaponThrown() { return mClientWeaponThrown ? mClientWeaponThrown : (mClientWeaponThrown = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ClientWeaponThrown")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DisplayDebug")); }
			ScriptFunction GetWeaponDebug() { return mGetWeaponDebug ? mGetWeaponDebug : (mGetWeaponDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetWeaponDebug")); }
			ScriptFunction GetPendingFireLength() { return mGetPendingFireLength ? mGetPendingFireLength : (mGetPendingFireLength = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetPendingFireLength")); }
			ScriptFunction PendingFire() { return mPendingFire ? mPendingFire : (mPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.PendingFire")); }
			ScriptFunction ConsumeAmmo() { return mConsumeAmmo ? mConsumeAmmo : (mConsumeAmmo = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ConsumeAmmo")); }
			ScriptFunction AddAmmo() { return mAddAmmo ? mAddAmmo : (mAddAmmo = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.AddAmmo")); }
			ScriptFunction HasAmmo() { return mHasAmmo ? mHasAmmo : (mHasAmmo = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.HasAmmo")); }
			ScriptFunction SetPendingFire() { return mSetPendingFire ? mSetPendingFire : (mSetPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.SetPendingFire")); }
			ScriptFunction ClearPendingFire() { return mClearPendingFire ? mClearPendingFire : (mClearPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ClearPendingFire")); }
			ScriptFunction GetProjectileClass() { return mGetProjectileClass ? mGetProjectileClass : (mGetProjectileClass = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetProjectileClass")); }
			ScriptFunction AddSpread() { return mAddSpread ? mAddSpread : (mAddSpread = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.AddSpread")); }
			ScriptFunction MaxRange() { return mMaxRange ? mMaxRange : (mMaxRange = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.MaxRange")); }
			ScriptFunction GetWeaponAnimNodeSeq() { return mGetWeaponAnimNodeSeq ? mGetWeaponAnimNodeSeq : (mGetWeaponAnimNodeSeq = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetWeaponAnimNodeSeq")); }
			ScriptFunction PlayWeaponAnimation() { return mPlayWeaponAnimation ? mPlayWeaponAnimation : (mPlayWeaponAnimation = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.PlayWeaponAnimation")); }
			ScriptFunction StopWeaponAnimation() { return mStopWeaponAnimation ? mStopWeaponAnimation : (mStopWeaponAnimation = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.StopWeaponAnimation")); }
			ScriptFunction PlayFireEffects() { return mPlayFireEffects ? mPlayFireEffects : (mPlayFireEffects = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.PlayFireEffects")); }
			ScriptFunction StopFireEffects() { return mStopFireEffects ? mStopFireEffects : (mStopFireEffects = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.StopFireEffects")); }
			ScriptFunction GetFireInterval() { return mGetFireInterval ? mGetFireInterval : (mGetFireInterval = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetFireInterval")); }
			ScriptFunction TimeWeaponFiring() { return mTimeWeaponFiring ? mTimeWeaponFiring : (mTimeWeaponFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.TimeWeaponFiring")); }
			ScriptFunction RefireCheckTimer() { return mRefireCheckTimer ? mRefireCheckTimer : (mRefireCheckTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.RefireCheckTimer")); }
			ScriptFunction TimeWeaponPutDown() { return mTimeWeaponPutDown ? mTimeWeaponPutDown : (mTimeWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.TimeWeaponPutDown")); }
			ScriptFunction TimeWeaponEquipping() { return mTimeWeaponEquipping ? mTimeWeaponEquipping : (mTimeWeaponEquipping = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.TimeWeaponEquipping")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.Activate")); }
			ScriptFunction PutDownWeapon() { return mPutDownWeapon ? mPutDownWeapon : (mPutDownWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.PutDownWeapon")); }
			ScriptFunction DenyPickupQuery() { return mDenyPickupQuery ? mDenyPickupQuery : (mDenyPickupQuery = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DenyPickupQuery")); }
			ScriptFunction WeaponEmpty() { return mWeaponEmpty ? mWeaponEmpty : (mWeaponEmpty = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.WeaponEmpty")); }
			ScriptFunction IncrementFlashCount() { return mIncrementFlashCount ? mIncrementFlashCount : (mIncrementFlashCount = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.IncrementFlashCount")); }
			ScriptFunction ClearFlashCount() { return mClearFlashCount ? mClearFlashCount : (mClearFlashCount = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ClearFlashCount")); }
			ScriptFunction SetFlashLocation() { return mSetFlashLocation ? mSetFlashLocation : (mSetFlashLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.SetFlashLocation")); }
			ScriptFunction ClearFlashLocation() { return mClearFlashLocation ? mClearFlashLocation : (mClearFlashLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ClearFlashLocation")); }
			ScriptFunction AttachWeaponTo() { return mAttachWeaponTo ? mAttachWeaponTo : (mAttachWeaponTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.AttachWeaponTo")); }
			ScriptFunction DetachWeapon() { return mDetachWeapon ? mDetachWeapon : (mDetachWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.DetachWeapon")); }
			ScriptFunction ClientGivenTo() { return mClientGivenTo ? mClientGivenTo : (mClientGivenTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ClientGivenTo")); }
			ScriptFunction ClientWeaponSet() { return mClientWeaponSet ? mClientWeaponSet : (mClientWeaponSet = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ClientWeaponSet")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.StartFire")); }
			ScriptFunction ServerStartFire() { return mServerStartFire ? mServerStartFire : (mServerStartFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ServerStartFire")); }
			ScriptFunction BeginFire() { return mBeginFire ? mBeginFire : (mBeginFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.BeginFire")); }
			ScriptFunction StopFire() { return mStopFire ? mStopFire : (mStopFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.StopFire")); }
			ScriptFunction ServerStopFire() { return mServerStopFire ? mServerStopFire : (mServerStopFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ServerStopFire")); }
			ScriptFunction EndFire() { return mEndFire ? mEndFire : (mEndFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.EndFire")); }
			ScriptFunction ForceEndFire() { return mForceEndFire ? mForceEndFire : (mForceEndFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ForceEndFire")); }
			ScriptFunction SendToFiringState() { return mSendToFiringState ? mSendToFiringState : (mSendToFiringState = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.SendToFiringState")); }
			ScriptFunction SetCurrentFireMode() { return mSetCurrentFireMode ? mSetCurrentFireMode : (mSetCurrentFireMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.SetCurrentFireMode")); }
			ScriptFunction FireModeUpdated() { return mFireModeUpdated ? mFireModeUpdated : (mFireModeUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.FireModeUpdated")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.FireAmmunition")); }
			ScriptFunction GetAdjustedAim() { return mGetAdjustedAim ? mGetAdjustedAim : (mGetAdjustedAim = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetAdjustedAim")); }
			ScriptFunction GetTraceOwner() { return mGetTraceOwner ? mGetTraceOwner : (mGetTraceOwner = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetTraceOwner")); }
			ScriptFunction CalcWeaponFire() { return mCalcWeaponFire ? mCalcWeaponFire : (mCalcWeaponFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.CalcWeaponFire")); }
			ScriptFunction PassThroughDamage() { return mPassThroughDamage ? mPassThroughDamage : (mPassThroughDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.PassThroughDamage")); }
			ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.InstantFire")); }
			ScriptFunction ProcessInstantHit() { return mProcessInstantHit ? mProcessInstantHit : (mProcessInstantHit = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ProcessInstantHit")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ProjectileFire")); }
			ScriptFunction CustomFire() { return mCustomFire ? mCustomFire : (mCustomFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.CustomFire")); }
			ScriptFunction GetMuzzleLoc() { return mGetMuzzleLoc ? mGetMuzzleLoc : (mGetMuzzleLoc = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetMuzzleLoc")); }
			ScriptFunction GetPhysicalFireStartLoc() { return mGetPhysicalFireStartLoc ? mGetPhysicalFireStartLoc : (mGetPhysicalFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetPhysicalFireStartLoc")); }
			ScriptFunction HandleFinishedFiring() { return mHandleFinishedFiring ? mHandleFinishedFiring : (mHandleFinishedFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.HandleFinishedFiring")); }
			ScriptFunction NotifyWeaponFired() { return mNotifyWeaponFired ? mNotifyWeaponFired : (mNotifyWeaponFired = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.NotifyWeaponFired")); }
			ScriptFunction NotifyWeaponFinishedFiring() { return mNotifyWeaponFinishedFiring ? mNotifyWeaponFinishedFiring : (mNotifyWeaponFinishedFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.NotifyWeaponFinishedFiring")); }
			ScriptFunction ShouldRefire() { return mShouldRefire ? mShouldRefire : (mShouldRefire = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.ShouldRefire")); }
			ScriptFunction StillFiring() { return mStillFiring ? mStillFiring : (mStillFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.StillFiring")); }
			ScriptFunction WeaponIsDown() { return mWeaponIsDown ? mWeaponIsDown : (mWeaponIsDown = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.WeaponIsDown")); }
			ScriptFunction CacheAIController() { return mCacheAIController ? mCacheAIController : (mCacheAIController = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.CacheAIController")); }
			ScriptFunction GetTargetDistance() { return mGetTargetDistance ? mGetTargetDistance : (mGetTargetDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.Weapon.GetTargetDistance")); }
		}
	}
	enum EWeaponFireType : ubyte
	{
		EWFT_InstantHit = 0,
		EWFT_Projectile = 1,
		EWFT_Custom = 2,
		EWFT_None = 3,
		EWFT_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			float WeaponRange() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			ubyte CurrentFireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 552); }
			ScriptArray!(ScriptName) FiringStatesArray() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(Weapon.EWeaponFireType) WeaponFireTypes() { return *cast(ScriptArray!(Weapon.EWeaponFireType)*)(cast(size_t)cast(void*)this + 568); }
			ScriptArray!(ScriptClass) WeaponProjectiles() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 580); }
			ScriptArray!(float) FireInterval() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 592); }
			ScriptArray!(float) Spread() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 604); }
			ScriptArray!(float) InstantHitDamage() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 616); }
			ScriptArray!(float) InstantHitMomentum() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 628); }
			ScriptArray!(ScriptClass) InstantHitDamageTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 640); }
			ScriptArray!(ubyte) ShouldFireOnRelease() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 696); }
			float CachedMaxRange() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
			float AIRating() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
			// WARNING: Property 'AIController' has the same name as a defined type!
			float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			float DefaultAnimSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			Vector FireOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 660); }
			float PutDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			float EquipTime() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
		}
		bool bInstantHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x10) != 0; }
		bool bInstantHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x10; } return val; }
		bool bMeleeWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x20) != 0; }
		bool bMeleeWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x20; } return val; }
		bool bWasDoNotActivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x8) != 0; }
		bool bWasDoNotActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x8; } return val; }
		bool bWasOptionalSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x4) != 0; }
		bool bWasOptionalSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x4; } return val; }
		bool bCanThrow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x2) != 0; }
		bool bCanThrow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x2; } return val; }
		bool bWeaponPutDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x1) != 0; }
		bool bWeaponPutDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x1; } return val; }
	}
final:
	float GetTraceRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTraceRange, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAnyAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetAIRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAIRating, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetWeaponRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponRating, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryPutDown, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DenyClientWeaponSet()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DenyClientWeaponSet, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireOnRelease, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanThrow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanThrow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void ItemRemovedFromInvManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ItemRemovedFromInvManager, cast(void*)0, cast(void*)0);
	}
	void HolderDied()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderDied, cast(void*)0, cast(void*)0);
	}
	bool DoOverrideNextWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoOverrideNextWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DoOverridePrevWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoOverridePrevWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFrom, params.ptr, cast(void*)0);
	}
	void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponThrown, cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void GetWeaponDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponDebug, params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	int GetPendingFireLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPendingFireLength, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool PendingFire(int FireMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.PendingFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo, params.ptr, cast(void*)0);
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetPendingFire(int FireMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingFire, params.ptr, cast(void*)0);
	}
	void ClearPendingFire(int FireMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPendingFire, params.ptr, cast(void*)0);
	}
	ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProjectileClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	Rotator AddSpread(Rotator BaseAim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSpread, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	float MaxRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MaxRange, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	AnimNodeSequence GetWeaponAnimNodeSeq()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponAnimNodeSeq, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
	void PlayWeaponAnimation(ScriptName pSequence, float fDesiredDuration, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponAnimation, params.ptr, cast(void*)0);
	}
	void StopWeaponAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopWeaponAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void StopFireEffects(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFireEffects, params.ptr, cast(void*)0);
	}
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireInterval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void TimeWeaponFiring(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeWeaponFiring, params.ptr, cast(void*)0);
	}
	void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefireCheckTimer, cast(void*)0, cast(void*)0);
	}
	void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void TimeWeaponEquipping()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeWeaponEquipping, cast(void*)0, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
	void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownWeapon, cast(void*)0, cast(void*)0);
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.DenyPickupQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponEmpty, cast(void*)0, cast(void*)0);
	}
	void IncrementFlashCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, cast(void*)0, cast(void*)0);
	}
	void ClearFlashCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashCount, cast(void*)0, cast(void*)0);
	}
	void SetFlashLocation(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashLocation, params.ptr, cast(void*)0);
	}
	void ClearFlashLocation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashLocation, cast(void*)0, cast(void*)0);
	}
	void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachWeaponTo, params.ptr, cast(void*)0);
	}
	void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachWeapon, cast(void*)0, cast(void*)0);
	}
	void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGivenTo, params.ptr, cast(void*)0);
	}
	void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponSet, params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStartFire, params.ptr, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginFire, params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFire, params.ptr, cast(void*)0);
	}
	void ServerStopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStopFire, params.ptr, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndFire, params.ptr, cast(void*)0);
	}
	void ForceEndFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceEndFire, cast(void*)0, cast(void*)0);
	}
	void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendToFiringState, params.ptr, cast(void*)0);
	}
	void SetCurrentFireMode(ubyte FiringModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentFireMode, params.ptr, cast(void*)0);
	}
	void FireModeUpdated(ubyte FiringMode, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FiringMode;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireModeUpdated, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	Actor GetTraceOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTraceOwner, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList, Vector Extent)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		*cast(Vector*)&params[36] = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcWeaponFire, params.ptr, cast(void*)0);
		*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
	static bool PassThroughDamage(Actor HitActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		StaticClass.ProcessEvent(Functions.PassThroughDamage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
	void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int NumHits)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(int*)&params[84] = NumHits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessInstantHit, params.ptr, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomFire, cast(void*)0, cast(void*)0);
	}
	Vector GetMuzzleLoc()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMuzzleLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void HandleFinishedFiring()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleFinishedFiring, cast(void*)0, cast(void*)0);
	}
	void NotifyWeaponFired(ubyte FireMode)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyWeaponFired, params.ptr, cast(void*)0);
	}
	void NotifyWeaponFinishedFiring(ubyte FireMode)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyWeaponFinishedFiring, params.ptr, cast(void*)0);
	}
	bool ShouldRefire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRefire, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool StillFiring(ubyte FireMode)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.StillFiring, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void WeaponIsDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponIsDown, cast(void*)0, cast(void*)0);
	}
	void CacheAIController()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheAIController, cast(void*)0, cast(void*)0);
	}
	float GetTargetDistance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetDistance, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}

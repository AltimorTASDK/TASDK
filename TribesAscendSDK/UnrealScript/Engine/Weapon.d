module UnrealScript.Engine.Weapon;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Weapon")()); }
	private static __gshared Weapon mDefaultProperties;
	@property final static Weapon DefaultProperties() { mixin(MGDPC!(Weapon, "Weapon Engine.Default__Weapon")()); }
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
			ScriptFunction GetTraceRange() { mixin(MGF!("mGetTraceRange", "Function Engine.Weapon.GetTraceRange")()); }
			ScriptFunction HasAnyAmmo() { mixin(MGF!("mHasAnyAmmo", "Function Engine.Weapon.HasAnyAmmo")()); }
			ScriptFunction GetAIRating() { mixin(MGF!("mGetAIRating", "Function Engine.Weapon.GetAIRating")()); }
			ScriptFunction GetWeaponRating() { mixin(MGF!("mGetWeaponRating", "Function Engine.Weapon.GetWeaponRating")()); }
			ScriptFunction TryPutDown() { mixin(MGF!("mTryPutDown", "Function Engine.Weapon.TryPutDown")()); }
			ScriptFunction DenyClientWeaponSet() { mixin(MGF!("mDenyClientWeaponSet", "Function Engine.Weapon.DenyClientWeaponSet")()); }
			ScriptFunction CanAttack() { mixin(MGF!("mCanAttack", "Function Engine.Weapon.CanAttack")()); }
			ScriptFunction FireOnRelease() { mixin(MGF!("mFireOnRelease", "Function Engine.Weapon.FireOnRelease")()); }
			ScriptFunction IsFiring() { mixin(MGF!("mIsFiring", "Function Engine.Weapon.IsFiring")()); }
			ScriptFunction CanThrow() { mixin(MGF!("mCanThrow", "Function Engine.Weapon.CanThrow")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.Weapon.Destroyed")()); }
			ScriptFunction ItemRemovedFromInvManager() { mixin(MGF!("mItemRemovedFromInvManager", "Function Engine.Weapon.ItemRemovedFromInvManager")()); }
			ScriptFunction HolderDied() { mixin(MGF!("mHolderDied", "Function Engine.Weapon.HolderDied")()); }
			ScriptFunction DoOverrideNextWeapon() { mixin(MGF!("mDoOverrideNextWeapon", "Function Engine.Weapon.DoOverrideNextWeapon")()); }
			ScriptFunction DoOverridePrevWeapon() { mixin(MGF!("mDoOverridePrevWeapon", "Function Engine.Weapon.DoOverridePrevWeapon")()); }
			ScriptFunction DropFrom() { mixin(MGF!("mDropFrom", "Function Engine.Weapon.DropFrom")()); }
			ScriptFunction ClientWeaponThrown() { mixin(MGF!("mClientWeaponThrown", "Function Engine.Weapon.ClientWeaponThrown")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.Weapon.DisplayDebug")()); }
			ScriptFunction GetWeaponDebug() { mixin(MGF!("mGetWeaponDebug", "Function Engine.Weapon.GetWeaponDebug")()); }
			ScriptFunction GetPendingFireLength() { mixin(MGF!("mGetPendingFireLength", "Function Engine.Weapon.GetPendingFireLength")()); }
			ScriptFunction PendingFire() { mixin(MGF!("mPendingFire", "Function Engine.Weapon.PendingFire")()); }
			ScriptFunction ConsumeAmmo() { mixin(MGF!("mConsumeAmmo", "Function Engine.Weapon.ConsumeAmmo")()); }
			ScriptFunction AddAmmo() { mixin(MGF!("mAddAmmo", "Function Engine.Weapon.AddAmmo")()); }
			ScriptFunction HasAmmo() { mixin(MGF!("mHasAmmo", "Function Engine.Weapon.HasAmmo")()); }
			ScriptFunction SetPendingFire() { mixin(MGF!("mSetPendingFire", "Function Engine.Weapon.SetPendingFire")()); }
			ScriptFunction ClearPendingFire() { mixin(MGF!("mClearPendingFire", "Function Engine.Weapon.ClearPendingFire")()); }
			ScriptFunction GetProjectileClass() { mixin(MGF!("mGetProjectileClass", "Function Engine.Weapon.GetProjectileClass")()); }
			ScriptFunction AddSpread() { mixin(MGF!("mAddSpread", "Function Engine.Weapon.AddSpread")()); }
			ScriptFunction MaxRange() { mixin(MGF!("mMaxRange", "Function Engine.Weapon.MaxRange")()); }
			ScriptFunction GetWeaponAnimNodeSeq() { mixin(MGF!("mGetWeaponAnimNodeSeq", "Function Engine.Weapon.GetWeaponAnimNodeSeq")()); }
			ScriptFunction PlayWeaponAnimation() { mixin(MGF!("mPlayWeaponAnimation", "Function Engine.Weapon.PlayWeaponAnimation")()); }
			ScriptFunction StopWeaponAnimation() { mixin(MGF!("mStopWeaponAnimation", "Function Engine.Weapon.StopWeaponAnimation")()); }
			ScriptFunction PlayFireEffects() { mixin(MGF!("mPlayFireEffects", "Function Engine.Weapon.PlayFireEffects")()); }
			ScriptFunction StopFireEffects() { mixin(MGF!("mStopFireEffects", "Function Engine.Weapon.StopFireEffects")()); }
			ScriptFunction GetFireInterval() { mixin(MGF!("mGetFireInterval", "Function Engine.Weapon.GetFireInterval")()); }
			ScriptFunction TimeWeaponFiring() { mixin(MGF!("mTimeWeaponFiring", "Function Engine.Weapon.TimeWeaponFiring")()); }
			ScriptFunction RefireCheckTimer() { mixin(MGF!("mRefireCheckTimer", "Function Engine.Weapon.RefireCheckTimer")()); }
			ScriptFunction TimeWeaponPutDown() { mixin(MGF!("mTimeWeaponPutDown", "Function Engine.Weapon.TimeWeaponPutDown")()); }
			ScriptFunction TimeWeaponEquipping() { mixin(MGF!("mTimeWeaponEquipping", "Function Engine.Weapon.TimeWeaponEquipping")()); }
			ScriptFunction Activate() { mixin(MGF!("mActivate", "Function Engine.Weapon.Activate")()); }
			ScriptFunction PutDownWeapon() { mixin(MGF!("mPutDownWeapon", "Function Engine.Weapon.PutDownWeapon")()); }
			ScriptFunction DenyPickupQuery() { mixin(MGF!("mDenyPickupQuery", "Function Engine.Weapon.DenyPickupQuery")()); }
			ScriptFunction WeaponEmpty() { mixin(MGF!("mWeaponEmpty", "Function Engine.Weapon.WeaponEmpty")()); }
			ScriptFunction IncrementFlashCount() { mixin(MGF!("mIncrementFlashCount", "Function Engine.Weapon.IncrementFlashCount")()); }
			ScriptFunction ClearFlashCount() { mixin(MGF!("mClearFlashCount", "Function Engine.Weapon.ClearFlashCount")()); }
			ScriptFunction SetFlashLocation() { mixin(MGF!("mSetFlashLocation", "Function Engine.Weapon.SetFlashLocation")()); }
			ScriptFunction ClearFlashLocation() { mixin(MGF!("mClearFlashLocation", "Function Engine.Weapon.ClearFlashLocation")()); }
			ScriptFunction AttachWeaponTo() { mixin(MGF!("mAttachWeaponTo", "Function Engine.Weapon.AttachWeaponTo")()); }
			ScriptFunction DetachWeapon() { mixin(MGF!("mDetachWeapon", "Function Engine.Weapon.DetachWeapon")()); }
			ScriptFunction ClientGivenTo() { mixin(MGF!("mClientGivenTo", "Function Engine.Weapon.ClientGivenTo")()); }
			ScriptFunction ClientWeaponSet() { mixin(MGF!("mClientWeaponSet", "Function Engine.Weapon.ClientWeaponSet")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function Engine.Weapon.StartFire")()); }
			ScriptFunction ServerStartFire() { mixin(MGF!("mServerStartFire", "Function Engine.Weapon.ServerStartFire")()); }
			ScriptFunction BeginFire() { mixin(MGF!("mBeginFire", "Function Engine.Weapon.BeginFire")()); }
			ScriptFunction StopFire() { mixin(MGF!("mStopFire", "Function Engine.Weapon.StopFire")()); }
			ScriptFunction ServerStopFire() { mixin(MGF!("mServerStopFire", "Function Engine.Weapon.ServerStopFire")()); }
			ScriptFunction EndFire() { mixin(MGF!("mEndFire", "Function Engine.Weapon.EndFire")()); }
			ScriptFunction ForceEndFire() { mixin(MGF!("mForceEndFire", "Function Engine.Weapon.ForceEndFire")()); }
			ScriptFunction SendToFiringState() { mixin(MGF!("mSendToFiringState", "Function Engine.Weapon.SendToFiringState")()); }
			ScriptFunction SetCurrentFireMode() { mixin(MGF!("mSetCurrentFireMode", "Function Engine.Weapon.SetCurrentFireMode")()); }
			ScriptFunction FireModeUpdated() { mixin(MGF!("mFireModeUpdated", "Function Engine.Weapon.FireModeUpdated")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function Engine.Weapon.FireAmmunition")()); }
			ScriptFunction GetAdjustedAim() { mixin(MGF!("mGetAdjustedAim", "Function Engine.Weapon.GetAdjustedAim")()); }
			ScriptFunction GetTraceOwner() { mixin(MGF!("mGetTraceOwner", "Function Engine.Weapon.GetTraceOwner")()); }
			ScriptFunction CalcWeaponFire() { mixin(MGF!("mCalcWeaponFire", "Function Engine.Weapon.CalcWeaponFire")()); }
			ScriptFunction PassThroughDamage() { mixin(MGF!("mPassThroughDamage", "Function Engine.Weapon.PassThroughDamage")()); }
			ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function Engine.Weapon.InstantFire")()); }
			ScriptFunction ProcessInstantHit() { mixin(MGF!("mProcessInstantHit", "Function Engine.Weapon.ProcessInstantHit")()); }
			ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function Engine.Weapon.ProjectileFire")()); }
			ScriptFunction CustomFire() { mixin(MGF!("mCustomFire", "Function Engine.Weapon.CustomFire")()); }
			ScriptFunction GetMuzzleLoc() { mixin(MGF!("mGetMuzzleLoc", "Function Engine.Weapon.GetMuzzleLoc")()); }
			ScriptFunction GetPhysicalFireStartLoc() { mixin(MGF!("mGetPhysicalFireStartLoc", "Function Engine.Weapon.GetPhysicalFireStartLoc")()); }
			ScriptFunction HandleFinishedFiring() { mixin(MGF!("mHandleFinishedFiring", "Function Engine.Weapon.HandleFinishedFiring")()); }
			ScriptFunction NotifyWeaponFired() { mixin(MGF!("mNotifyWeaponFired", "Function Engine.Weapon.NotifyWeaponFired")()); }
			ScriptFunction NotifyWeaponFinishedFiring() { mixin(MGF!("mNotifyWeaponFinishedFiring", "Function Engine.Weapon.NotifyWeaponFinishedFiring")()); }
			ScriptFunction ShouldRefire() { mixin(MGF!("mShouldRefire", "Function Engine.Weapon.ShouldRefire")()); }
			ScriptFunction StillFiring() { mixin(MGF!("mStillFiring", "Function Engine.Weapon.StillFiring")()); }
			ScriptFunction WeaponIsDown() { mixin(MGF!("mWeaponIsDown", "Function Engine.Weapon.WeaponIsDown")()); }
			ScriptFunction CacheAIController() { mixin(MGF!("mCacheAIController", "Function Engine.Weapon.CacheAIController")()); }
			ScriptFunction GetTargetDistance() { mixin(MGF!("mGetTargetDistance", "Function Engine.Weapon.GetTargetDistance")()); }
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
	static struct Inactive
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Weapon.Inactive")()); }
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Weapon.Active")()); }
	}
	static struct WeaponFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Weapon.WeaponFiring")()); }
	}
	static struct WeaponEquipping
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Weapon.WeaponEquipping")()); }
	}
	static struct WeaponPuttingDown
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Weapon.WeaponPuttingDown")()); }
	}
	static struct PendingClientWeaponSet
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Weapon.PendingClientWeaponSet")()); }
	}
	@property final
	{
		auto ref
		{
			float WeaponRange() { mixin(MGPC!("float", 676)()); }
			ubyte CurrentFireMode() { mixin(MGPC!("ubyte", 552)()); }
			ScriptArray!(ScriptName) FiringStatesArray() { mixin(MGPC!("ScriptArray!(ScriptName)", 556)()); }
			ScriptArray!(Weapon.EWeaponFireType) WeaponFireTypes() { mixin(MGPC!("ScriptArray!(Weapon.EWeaponFireType)", 568)()); }
			ScriptArray!(ScriptClass) WeaponProjectiles() { mixin(MGPC!("ScriptArray!(ScriptClass)", 580)()); }
			ScriptArray!(float) FireInterval() { mixin(MGPC!("ScriptArray!(float)", 592)()); }
			ScriptArray!(float) Spread() { mixin(MGPC!("ScriptArray!(float)", 604)()); }
			ScriptArray!(float) InstantHitDamage() { mixin(MGPC!("ScriptArray!(float)", 616)()); }
			ScriptArray!(float) InstantHitMomentum() { mixin(MGPC!("ScriptArray!(float)", 628)()); }
			ScriptArray!(ScriptClass) InstantHitDamageTypes() { mixin(MGPC!("ScriptArray!(ScriptClass)", 640)()); }
			ScriptArray!(ubyte) ShouldFireOnRelease() { mixin(MGPC!("ScriptArray!(ubyte)", 696)()); }
			float CachedMaxRange() { mixin(MGPC!("float", 712)()); }
			float AIRating() { mixin(MGPC!("float", 708)()); }
			// WARNING: Property 'AIController' has the same name as a defined type!
			float Priority() { mixin(MGPC!("float", 688)()); }
			float DefaultAnimSpeed() { mixin(MGPC!("float", 684)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Mesh'!
			Vector FireOffset() { mixin(MGPC!("Vector", 660)()); }
			float PutDownTime() { mixin(MGPC!("float", 656)()); }
			float EquipTime() { mixin(MGPC!("float", 652)()); }
		}
		bool bInstantHit() { mixin(MGBPC!(672, 0x10)()); }
		bool bInstantHit(bool val) { mixin(MSBPC!(672, 0x10)()); }
		bool bMeleeWeapon() { mixin(MGBPC!(672, 0x20)()); }
		bool bMeleeWeapon(bool val) { mixin(MSBPC!(672, 0x20)()); }
		bool bWasDoNotActivate() { mixin(MGBPC!(672, 0x8)()); }
		bool bWasDoNotActivate(bool val) { mixin(MSBPC!(672, 0x8)()); }
		bool bWasOptionalSet() { mixin(MGBPC!(672, 0x4)()); }
		bool bWasOptionalSet(bool val) { mixin(MSBPC!(672, 0x4)()); }
		bool bCanThrow() { mixin(MGBPC!(672, 0x2)()); }
		bool bCanThrow(bool val) { mixin(MSBPC!(672, 0x2)()); }
		bool bWeaponPutDown() { mixin(MGBPC!(672, 0x1)()); }
		bool bWeaponPutDown(bool val) { mixin(MSBPC!(672, 0x1)()); }
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
	void GetWeaponDebug(ref ScriptArray!(ScriptString) DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponDebug, params.ptr, cast(void*)0);
		DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
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
	bool HasAmmo(ubyte FireModeNum, int* Amount = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		if (Amount !is null)
			*cast(int*)&params[4] = *Amount;
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
	void PlayWeaponAnimation(ScriptName pSequence, float fDesiredDuration, bool* bLoop = null, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** SkelMesh = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		if (bLoop !is null)
			*cast(bool*)&params[12] = *bLoop;
		if (SkelMesh !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = *SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponAnimation, params.ptr, cast(void*)0);
	}
	void StopWeaponAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopWeaponAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector* HitLocation = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		if (HitLocation !is null)
			*cast(Vector*)&params[4] = *HitLocation;
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
void* MeshCpnt, ScriptName* SocketName = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		if (SocketName !is null)
			*cast(ScriptName*)&params[4] = *SocketName;
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
	void ClientWeaponSet(bool bOptionalSet, bool* bDoNotActivate = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[4] = *bDoNotActivate;
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
	Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList = null, Vector* Extent = null)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		if (ImpactList !is null)
			*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		if (Extent !is null)
			*cast(Vector*)&params[36] = *Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcWeaponFire, params.ptr, cast(void*)0);
		if (ImpactList !is null)
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
	void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int* NumHits = null)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		if (NumHits !is null)
			*cast(int*)&params[84] = *NumHits;
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
	Vector GetPhysicalFireStartLoc(Vector* AimDir = null)
	{
		ubyte params[24];
		params[] = 0;
		if (AimDir !is null)
			*cast(Vector*)params.ptr = *AimDir;
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

module UnrealScript.TribesGame.TrTurretPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrTurretPawn : TrPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrTurretPawn")); }
	private static __gshared TrTurretPawn mDefaultProperties;
	@property final static TrTurretPawn DefaultProperties() { mixin(MGDPC("TrTurretPawn", "TrTurretPawn TribesGame.Default__TrTurretPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mLeadingAimLocation;
			ScriptFunction mGetValidAimTarget;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mWeaponFired;
			ScriptFunction mGetAimVectorFor;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mReset;
			ScriptFunction mTakeDamage;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mRefreshPlayer;
			ScriptFunction mRefreshInventory;
			ScriptFunction mSetCharacterClassFromInfo;
			ScriptFunction mPostRenderFor;
			ScriptFunction mIncrementFlashCount;
		}
		public @property static final
		{
			ScriptFunction LeadingAimLocation() { mixin(MGF("mLeadingAimLocation", "Function TribesGame.TrTurretPawn.LeadingAimLocation")); }
			ScriptFunction GetValidAimTarget() { mixin(MGF("mGetValidAimTarget", "Function TribesGame.TrTurretPawn.GetValidAimTarget")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrTurretPawn.PostBeginPlay")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrTurretPawn.Destroyed")); }
			ScriptFunction WeaponFired() { mixin(MGF("mWeaponFired", "Function TribesGame.TrTurretPawn.WeaponFired")); }
			ScriptFunction GetAimVectorFor() { mixin(MGF("mGetAimVectorFor", "Function TribesGame.TrTurretPawn.GetAimVectorFor")); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF("mGetAdjustedAimFor", "Function TribesGame.TrTurretPawn.GetAdjustedAimFor")); }
			ScriptFunction GetWeaponStartTraceLocation() { mixin(MGF("mGetWeaponStartTraceLocation", "Function TribesGame.TrTurretPawn.GetWeaponStartTraceLocation")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function TribesGame.TrTurretPawn.Reset")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function TribesGame.TrTurretPawn.TakeDamage")); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF("mTakeRadiusDamage", "Function TribesGame.TrTurretPawn.TakeRadiusDamage")); }
			ScriptFunction RefreshPlayer() { mixin(MGF("mRefreshPlayer", "Function TribesGame.TrTurretPawn.RefreshPlayer")); }
			ScriptFunction RefreshInventory() { mixin(MGF("mRefreshInventory", "Function TribesGame.TrTurretPawn.RefreshInventory")); }
			ScriptFunction SetCharacterClassFromInfo() { mixin(MGF("mSetCharacterClassFromInfo", "Function TribesGame.TrTurretPawn.SetCharacterClassFromInfo")); }
			ScriptFunction PostRenderFor() { mixin(MGF("mPostRenderFor", "Function TribesGame.TrTurretPawn.PostRenderFor")); }
			ScriptFunction IncrementFlashCount() { mixin(MGF("mIncrementFlashCount", "Function TribesGame.TrTurretPawn.IncrementFlashCount")); }
		}
	}
	@property final auto ref TrDeployable m_OwnerDeployable() { mixin(MGPC("TrDeployable", 3192)); }
final:
	Vector LeadingAimLocation(Actor Enemy)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeadingAimLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetValidAimTarget(Vector PawnLocation, Vector PawnTargetLocation)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = PawnLocation;
		*cast(Vector*)&params[12] = PawnTargetLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetValidAimTarget, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector* HitLocation = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		if (HitLocation !is null)
			*cast(Vector*)&params[8] = *HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponFired, params.ptr, cast(void*)0);
	}
	Vector GetAimVectorFor(Weapon InWeapon, Vector projStart, Actor Enemy)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = projStart;
		*cast(Actor*)&params[16] = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAimVectorFor, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	Rotator GetAdjustedAimFor(Weapon InWeapon, Vector projStart)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = projStart;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAimFor, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	Vector GetWeaponStartTraceLocation(Weapon* CurrentWeapon = null)
	{
		ubyte params[16];
		params[] = 0;
		if (CurrentWeapon !is null)
			*cast(Weapon*)params.ptr = *CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float* DamageFalloffExponent = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		if (DamageFalloffExponent !is null)
			*cast(float*)&params[40] = *DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void RefreshPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshPlayer, cast(void*)0, cast(void*)0);
	}
	void RefreshInventory(bool bIsRespawn, bool* bCallin = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		if (bCallin !is null)
			*cast(bool*)&params[4] = *bCallin;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshInventory, params.ptr, cast(void*)0);
	}
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool* bForce = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		if (bForce !is null)
			*cast(bool*)&params[4] = *bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCharacterClassFromInfo, params.ptr, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon W, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, params.ptr, cast(void*)0);
	}
}

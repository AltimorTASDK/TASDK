module UnrealScript.TribesGame.TrTurretPawn;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTurretPawn")); }
	private static __gshared TrTurretPawn mDefaultProperties;
	@property final static TrTurretPawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrTurretPawn)("TrTurretPawn TribesGame.Default__TrTurretPawn")); }
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
			ScriptFunction LeadingAimLocation() { return mLeadingAimLocation ? mLeadingAimLocation : (mLeadingAimLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.LeadingAimLocation")); }
			ScriptFunction GetValidAimTarget() { return mGetValidAimTarget ? mGetValidAimTarget : (mGetValidAimTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.GetValidAimTarget")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.PostBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.Destroyed")); }
			ScriptFunction WeaponFired() { return mWeaponFired ? mWeaponFired : (mWeaponFired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.WeaponFired")); }
			ScriptFunction GetAimVectorFor() { return mGetAimVectorFor ? mGetAimVectorFor : (mGetAimVectorFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.GetAimVectorFor")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.GetAdjustedAimFor")); }
			ScriptFunction GetWeaponStartTraceLocation() { return mGetWeaponStartTraceLocation ? mGetWeaponStartTraceLocation : (mGetWeaponStartTraceLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.GetWeaponStartTraceLocation")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.Reset")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.TakeDamage")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.TakeRadiusDamage")); }
			ScriptFunction RefreshPlayer() { return mRefreshPlayer ? mRefreshPlayer : (mRefreshPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.RefreshPlayer")); }
			ScriptFunction RefreshInventory() { return mRefreshInventory ? mRefreshInventory : (mRefreshInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.RefreshInventory")); }
			ScriptFunction SetCharacterClassFromInfo() { return mSetCharacterClassFromInfo ? mSetCharacterClassFromInfo : (mSetCharacterClassFromInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.SetCharacterClassFromInfo")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.PostRenderFor")); }
			ScriptFunction IncrementFlashCount() { return mIncrementFlashCount ? mIncrementFlashCount : (mIncrementFlashCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTurretPawn.IncrementFlashCount")); }
		}
	}
	@property final auto ref TrDeployable m_OwnerDeployable() { return *cast(TrDeployable*)(cast(size_t)cast(void*)this + 3192); }
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
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
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
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
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
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void RefreshPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshPlayer, cast(void*)0, cast(void*)0);
	}
	void RefreshInventory(bool bIsRespawn, bool bCallin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		*cast(bool*)&params[4] = bCallin;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshInventory, params.ptr, cast(void*)0);
	}
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		*cast(bool*)&params[4] = bForce;
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

module UnrealScript.TribesGame.TrDeployable_Turret;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;

extern(C++) interface TrDeployable_Turret : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_Turret")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mDeployComplete;
			ScriptFunction mAcquireTarget;
			ScriptFunction mGetAcquireDelayTime;
			ScriptFunction mCleanupIgnoreList;
			ScriptFunction mCanTargetPawn;
			ScriptFunction mGetTargetPawn;
			ScriptFunction mTick;
			ScriptFunction mUpdateAim;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mCauseMuzzleFlash;
			ScriptFunction mMuzzleFlashTimer;
			ScriptFunction mSetMuzzleFlashParams;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mGetMarker;
			ScriptFunction mAwardKillAssists;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.PostInitAnimTree")); }
			ScriptFunction DeployComplete() { return mDeployComplete ? mDeployComplete : (mDeployComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.DeployComplete")); }
			ScriptFunction AcquireTarget() { return mAcquireTarget ? mAcquireTarget : (mAcquireTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.AcquireTarget")); }
			ScriptFunction GetAcquireDelayTime() { return mGetAcquireDelayTime ? mGetAcquireDelayTime : (mGetAcquireDelayTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.GetAcquireDelayTime")); }
			ScriptFunction CleanupIgnoreList() { return mCleanupIgnoreList ? mCleanupIgnoreList : (mCleanupIgnoreList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.CleanupIgnoreList")); }
			ScriptFunction CanTargetPawn() { return mCanTargetPawn ? mCanTargetPawn : (mCanTargetPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.CanTargetPawn")); }
			ScriptFunction GetTargetPawn() { return mGetTargetPawn ? mGetTargetPawn : (mGetTargetPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.GetTargetPawn")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.Tick")); }
			ScriptFunction UpdateAim() { return mUpdateAim ? mUpdateAim : (mUpdateAim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.UpdateAim")); }
			ScriptFunction PlayFireEffects() { return mPlayFireEffects ? mPlayFireEffects : (mPlayFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.PlayFireEffects")); }
			ScriptFunction CauseMuzzleFlash() { return mCauseMuzzleFlash ? mCauseMuzzleFlash : (mCauseMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.CauseMuzzleFlash")); }
			ScriptFunction MuzzleFlashTimer() { return mMuzzleFlashTimer ? mMuzzleFlashTimer : (mMuzzleFlashTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.MuzzleFlashTimer")); }
			ScriptFunction SetMuzzleFlashParams() { return mSetMuzzleFlashParams ? mSetMuzzleFlashParams : (mSetMuzzleFlashParams = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.SetMuzzleFlashParams")); }
			ScriptFunction GetWeaponStartTraceLocation() { return mGetWeaponStartTraceLocation ? mGetWeaponStartTraceLocation : (mGetWeaponStartTraceLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.GetWeaponStartTraceLocation")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.GetMarker")); }
			ScriptFunction AwardKillAssists() { return mAwardKillAssists ? mAwardKillAssists : (mAwardKillAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Turret.AwardKillAssists")); }
		}
	}
	struct IgnorePawn
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDeployable_Turret.IgnorePawn")); }
		@property final auto ref
		{
			float UnignoreTime() { return *cast(float*)(cast(size_t)&this + 4); }
			TrPawn PawnToIgnore() { return *cast(TrPawn*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SkelControlLookAt) m_LookAtSkelControls() { return *cast(ScriptArray!(SkelControlLookAt)*)(cast(size_t)cast(void*)this + 1528); }
			ScriptArray!(ScriptName) m_LookAtSkelControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1540); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilSkelControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 1552); }
			ScriptArray!(ScriptName) m_RecoilSkelControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1564); }
			ScriptArray!(TrDeployable_Turret.IgnorePawn) m_IgnorePawnList() { return *cast(ScriptArray!(TrDeployable_Turret.IgnorePawn)*)(cast(size_t)cast(void*)this + 1604); }
			float m_fLastStallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1624); }
			float m_fFireStallRestoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1620); }
			float m_fTimeToIgnoreInvulnerable() { return *cast(float*)(cast(size_t)cast(void*)this + 1616); }
			float m_fTimeToAcquireTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 1600); }
			float m_fTargetAcquiredTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1596); }
			SoundCue m_TargetAcquiredSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1592); }
			float m_fDeltaFireInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1588); }
			ScriptClass m_MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1580); }
		}
		bool m_bCanTargetVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1524) & 0x2) != 0; }
		bool m_bCanTargetVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1524) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1524) &= ~0x2; } return val; }
		bool m_bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1524) & 0x1) != 0; }
		bool m_bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1524) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	void AcquireTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AcquireTarget, cast(void*)0, cast(void*)0);
	}
	float GetAcquireDelayTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAcquireDelayTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void CleanupIgnoreList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupIgnoreList, cast(void*)0, cast(void*)0);
	}
	bool CanTargetPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanTargetPawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Pawn GetTargetPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetPawn, params.ptr, cast(void*)0);
		return *cast(Pawn*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void UpdateAim(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAim, params.ptr, cast(void*)0);
	}
	void PlayFireEffects(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MuzzleFlashTimer, cast(void*)0, cast(void*)0);
	}
	void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC, UObject.Color MuzzleFlashColor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		*cast(UObject.Color*)&params[4] = MuzzleFlashColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMuzzleFlashParams, params.ptr, cast(void*)0);
	}
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void AwardKillAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardKillAssists, cast(void*)0, cast(void*)0);
	}
}

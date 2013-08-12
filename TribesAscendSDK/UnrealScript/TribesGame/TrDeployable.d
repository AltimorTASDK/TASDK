module UnrealScript.TribesGame.TrDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrTurretPawn;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrPowerGenerator;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrDeployableCollisionProxy;
import UnrealScript.Engine.AnimNodeScalePlayRate;
import UnrealScript.TribesGame.TrVehicle;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrSubDevice;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Weapon;

extern(C++) interface TrDeployable : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAdjustMeshToGround;
			ScriptFunction mCalcMeshOffset;
			ScriptFunction mIsInLOS;
			ScriptFunction mApplyServerSettings;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnPRIReplicated;
			ScriptFunction mTick;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mTakeDamage;
			ScriptFunction mOnPawnDetectedByCollisionProxy;
			ScriptFunction mOnPawnExitedCollisionProxy;
			ScriptFunction mOnVehicleDetectedByCollisionProxy;
			ScriptFunction mOnVehicleExitedCollisionProxy;
			ScriptFunction mOnPowerStatusChanged;
			ScriptFunction mSetInstigatorController;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGetDamageRadius;
			ScriptFunction mFinalizeDeployment;
			ScriptFunction mDeployComplete;
			ScriptFunction mIsFiring;
			ScriptFunction mUpdateHealthMaterial;
			ScriptFunction mOnHealthChanged;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mStopsProjectile;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mPulseBackupGenerators;
			ScriptFunction mDestroyed;
			ScriptFunction mReceivesPowerFromGenerator;
			ScriptFunction mGetPossessiveInstigatorName;
			ScriptFunction mCalcOtherWatchingCam;
			ScriptFunction mOnUpgradePerformed;
		}
		public @property static final
		{
			ScriptFunction AdjustMeshToGround() { return mAdjustMeshToGround ? mAdjustMeshToGround : (mAdjustMeshToGround = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.AdjustMeshToGround")); }
			ScriptFunction CalcMeshOffset() { return mCalcMeshOffset ? mCalcMeshOffset : (mCalcMeshOffset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.CalcMeshOffset")); }
			ScriptFunction IsInLOS() { return mIsInLOS ? mIsInLOS : (mIsInLOS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.IsInLOS")); }
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.ApplyServerSettings")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.PostInitAnimTree")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.ReplicatedEvent")); }
			ScriptFunction OnPRIReplicated() { return mOnPRIReplicated ? mOnPRIReplicated : (mOnPRIReplicated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnPRIReplicated")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.Tick")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.TakeRadiusDamage")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.TakeDamage")); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { return mOnPawnDetectedByCollisionProxy ? mOnPawnDetectedByCollisionProxy : (mOnPawnDetectedByCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnPawnDetectedByCollisionProxy")); }
			ScriptFunction OnPawnExitedCollisionProxy() { return mOnPawnExitedCollisionProxy ? mOnPawnExitedCollisionProxy : (mOnPawnExitedCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnPawnExitedCollisionProxy")); }
			ScriptFunction OnVehicleDetectedByCollisionProxy() { return mOnVehicleDetectedByCollisionProxy ? mOnVehicleDetectedByCollisionProxy : (mOnVehicleDetectedByCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnVehicleDetectedByCollisionProxy")); }
			ScriptFunction OnVehicleExitedCollisionProxy() { return mOnVehicleExitedCollisionProxy ? mOnVehicleExitedCollisionProxy : (mOnVehicleExitedCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnVehicleExitedCollisionProxy")); }
			ScriptFunction OnPowerStatusChanged() { return mOnPowerStatusChanged ? mOnPowerStatusChanged : (mOnPowerStatusChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnPowerStatusChanged")); }
			ScriptFunction SetInstigatorController() { return mSetInstigatorController ? mSetInstigatorController : (mSetInstigatorController = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.SetInstigatorController")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.PostBeginPlay")); }
			ScriptFunction GetDamageRadius() { return mGetDamageRadius ? mGetDamageRadius : (mGetDamageRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.GetDamageRadius")); }
			ScriptFunction FinalizeDeployment() { return mFinalizeDeployment ? mFinalizeDeployment : (mFinalizeDeployment = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.FinalizeDeployment")); }
			ScriptFunction DeployComplete() { return mDeployComplete ? mDeployComplete : (mDeployComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.DeployComplete")); }
			ScriptFunction IsFiring() { return mIsFiring ? mIsFiring : (mIsFiring = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.IsFiring")); }
			ScriptFunction UpdateHealthMaterial() { return mUpdateHealthMaterial ? mUpdateHealthMaterial : (mUpdateHealthMaterial = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.UpdateHealthMaterial")); }
			ScriptFunction OnHealthChanged() { return mOnHealthChanged ? mOnHealthChanged : (mOnHealthChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnHealthChanged")); }
			ScriptFunction GetWeaponStartTraceLocation() { return mGetWeaponStartTraceLocation ? mGetWeaponStartTraceLocation : (mGetWeaponStartTraceLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.GetWeaponStartTraceLocation")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.StopsProjectile")); }
			ScriptFunction IncrementFlashCount() { return mIncrementFlashCount ? mIncrementFlashCount : (mIncrementFlashCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.IncrementFlashCount")); }
			ScriptFunction PlayFireEffects() { return mPlayFireEffects ? mPlayFireEffects : (mPlayFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.PlayFireEffects")); }
			ScriptFunction PulseBackupGenerators() { return mPulseBackupGenerators ? mPulseBackupGenerators : (mPulseBackupGenerators = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.PulseBackupGenerators")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.Destroyed")); }
			ScriptFunction ReceivesPowerFromGenerator() { return mReceivesPowerFromGenerator ? mReceivesPowerFromGenerator : (mReceivesPowerFromGenerator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.ReceivesPowerFromGenerator")); }
			ScriptFunction GetPossessiveInstigatorName() { return mGetPossessiveInstigatorName ? mGetPossessiveInstigatorName : (mGetPossessiveInstigatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.GetPossessiveInstigatorName")); }
			ScriptFunction CalcOtherWatchingCam() { return mCalcOtherWatchingCam ? mCalcOtherWatchingCam : (mCalcOtherWatchingCam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.CalcOtherWatchingCam")); }
			ScriptFunction OnUpgradePerformed() { return mOnUpgradePerformed ? mOnUpgradePerformed : (mOnUpgradePerformed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable.OnUpgradePerformed")); }
		}
	}
	enum DEPLOYABLE_STARTING_HEALTH_PCT = 0.10f;
	@property final
	{
		auto ref
		{
			Controller m_Controller() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1408); }
			ScriptArray!(float) m_fRelevancyCheckHeights() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 1480); }
			int m_nIconStackId() { return *cast(int*)(cast(size_t)cast(void*)this + 1520); }
			Vector m_vDeathCamStartOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1508); }
			PlayerReplicationInfo r_OwnerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1504); }
			float m_fAnimInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1496); }
			AnimNodeScalePlayRate m_AnimNodeScale() { return *cast(AnimNodeScalePlayRate*)(cast(size_t)cast(void*)this + 1492); }
			Actor m_LastViewer() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1476); }
			PlayerController m_LastRealViewer() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 1472); }
			float m_fNetRelevancyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1468); }
			SoundCue m_DeploySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1464); }
			TrPowerGenerator m_MyMainGenerator() { return *cast(TrPowerGenerator*)(cast(size_t)cast(void*)this + 1460); }
			Pawn r_TargetPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1456); }
			ubyte r_FlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1452); }
			TrSubDevice m_Weapon() { return *cast(TrSubDevice*)(cast(size_t)cast(void*)this + 1448); }
			TrTurretPawn m_WeaponHolder() { return *cast(TrTurretPawn*)(cast(size_t)cast(void*)this + 1444); }
			ScriptClass m_DeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1440); }
			float m_fAlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
			float r_fNewDetectionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1432); }
			float m_fDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1428); }
			TrDeployableCollisionProxy m_CollisionProxy() { return *cast(TrDeployableCollisionProxy*)(cast(size_t)cast(void*)this + 1424); }
			float m_fOverriddenTargetComponentHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
			float m_TargetCollisionTraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1416); }
			float m_fFiringArcCheckValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
			Vector m_PlacementOrientationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
			int m_nFiringArcDegrees() { return *cast(int*)(cast(size_t)cast(void*)this + 1388); }
			float m_fTimeToDeploySecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1380); }
			float m_fRemoteActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
			float m_fBuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1372); }
			TrPawn m_TouchedPlayer() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1368); }
			float m_TimeCreated() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
			int m_nMaxDeployablesOut() { return *cast(int*)(cast(size_t)cast(void*)this + 1360); }
		}
		bool m_bBlocksFriendlies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x80) != 0; }
		bool m_bBlocksFriendlies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x80; } return val; }
		bool m_bCanBeSpottedByVGS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x40) != 0; }
		bool m_bCanBeSpottedByVGS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x40; } return val; }
		bool m_bIsXRay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x20) != 0; }
		bool m_bIsXRay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x20; } return val; }
		bool m_bCachedRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x10) != 0; }
		bool m_bCachedRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x10; } return val; }
		bool m_bOverrideTargetComponentHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x8) != 0; }
		bool m_bOverrideTargetComponentHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x8; } return val; }
		bool m_bUsesArmoredMultiplier() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x4) != 0; }
		bool m_bUsesArmoredMultiplier(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x4; } return val; }
		bool m_bRequireLOS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x2) != 0; }
		bool m_bRequireLOS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x2; } return val; }
		bool m_bIsDeployed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x1) != 0; }
		bool m_bIsDeployed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x1; } return val; }
	}
final:
	void AdjustMeshToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustMeshToGround, cast(void*)0, cast(void*)0);
	}
	float CalcMeshOffset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcMeshOffset, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsInLOS(Actor TouchedActor, Vector StartLocation, Vector EndLocation, bool CheckBlockedByBlockers, bool CheckBlockedByActors)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TouchedActor;
		*cast(Vector*)&params[4] = StartLocation;
		*cast(Vector*)&params[16] = EndLocation;
		*cast(bool*)&params[28] = CheckBlockedByBlockers;
		*cast(bool*)&params[32] = CheckBlockedByActors;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInLOS, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
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
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnPRIReplicated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPRIReplicated, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
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
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnDetectedByCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnExitedCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnVehicleDetectedByCollisionProxy(TrVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnVehicleDetectedByCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnVehicleExitedCollisionProxy(TrVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnVehicleExitedCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
	void SetInstigatorController(TrPlayerController InstigatorController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = InstigatorController;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInstigatorController, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	float GetDamageRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void FinalizeDeployment()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinalizeDeployment, cast(void*)0, cast(void*)0);
	}
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UpdateHealthMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHealthMaterial, cast(void*)0, cast(void*)0);
	}
	void OnHealthChanged(bool wasDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = wasDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnHealthChanged, params.ptr, cast(void*)0);
	}
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void IncrementFlashCount(Weapon W, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, params.ptr, cast(void*)0);
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
	void PulseBackupGenerators()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseBackupGenerators, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	bool ReceivesPowerFromGenerator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivesPowerFromGenerator, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool GetPossessiveInstigatorName(ScriptString* PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPossessiveInstigatorName, params.ptr, cast(void*)0);
		*PlayerName = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool CalcOtherWatchingCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		*cast(TrPlayerController*)&params[32] = WatcherController;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcOtherWatchingCam, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[36];
	}
	void OnUpgradePerformed(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUpgradePerformed, params.ptr, cast(void*)0);
	}
}

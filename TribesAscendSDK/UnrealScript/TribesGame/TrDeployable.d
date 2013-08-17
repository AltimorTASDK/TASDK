module UnrealScript.TribesGame.TrDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable")()); }
	private static __gshared TrDeployable mDefaultProperties;
	@property final static TrDeployable DefaultProperties() { mixin(MGDPC!(TrDeployable, "TrDeployable TribesGame.Default__TrDeployable")()); }
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
			ScriptFunction AdjustMeshToGround() { mixin(MGF!("mAdjustMeshToGround", "Function TribesGame.TrDeployable.AdjustMeshToGround")()); }
			ScriptFunction CalcMeshOffset() { mixin(MGF!("mCalcMeshOffset", "Function TribesGame.TrDeployable.CalcMeshOffset")()); }
			ScriptFunction IsInLOS() { mixin(MGF!("mIsInLOS", "Function TribesGame.TrDeployable.IsInLOS")()); }
			ScriptFunction ApplyServerSettings() { mixin(MGF!("mApplyServerSettings", "Function TribesGame.TrDeployable.ApplyServerSettings")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrDeployable.PostInitAnimTree")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrDeployable.ReplicatedEvent")()); }
			ScriptFunction OnPRIReplicated() { mixin(MGF!("mOnPRIReplicated", "Function TribesGame.TrDeployable.OnPRIReplicated")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrDeployable.Tick")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function TribesGame.TrDeployable.TakeRadiusDamage")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrDeployable.TakeDamage")()); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { mixin(MGF!("mOnPawnDetectedByCollisionProxy", "Function TribesGame.TrDeployable.OnPawnDetectedByCollisionProxy")()); }
			ScriptFunction OnPawnExitedCollisionProxy() { mixin(MGF!("mOnPawnExitedCollisionProxy", "Function TribesGame.TrDeployable.OnPawnExitedCollisionProxy")()); }
			ScriptFunction OnVehicleDetectedByCollisionProxy() { mixin(MGF!("mOnVehicleDetectedByCollisionProxy", "Function TribesGame.TrDeployable.OnVehicleDetectedByCollisionProxy")()); }
			ScriptFunction OnVehicleExitedCollisionProxy() { mixin(MGF!("mOnVehicleExitedCollisionProxy", "Function TribesGame.TrDeployable.OnVehicleExitedCollisionProxy")()); }
			ScriptFunction OnPowerStatusChanged() { mixin(MGF!("mOnPowerStatusChanged", "Function TribesGame.TrDeployable.OnPowerStatusChanged")()); }
			ScriptFunction SetInstigatorController() { mixin(MGF!("mSetInstigatorController", "Function TribesGame.TrDeployable.SetInstigatorController")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrDeployable.PostBeginPlay")()); }
			ScriptFunction GetDamageRadius() { mixin(MGF!("mGetDamageRadius", "Function TribesGame.TrDeployable.GetDamageRadius")()); }
			ScriptFunction FinalizeDeployment() { mixin(MGF!("mFinalizeDeployment", "Function TribesGame.TrDeployable.FinalizeDeployment")()); }
			ScriptFunction DeployComplete() { mixin(MGF!("mDeployComplete", "Function TribesGame.TrDeployable.DeployComplete")()); }
			ScriptFunction IsFiring() { mixin(MGF!("mIsFiring", "Function TribesGame.TrDeployable.IsFiring")()); }
			ScriptFunction UpdateHealthMaterial() { mixin(MGF!("mUpdateHealthMaterial", "Function TribesGame.TrDeployable.UpdateHealthMaterial")()); }
			ScriptFunction OnHealthChanged() { mixin(MGF!("mOnHealthChanged", "Function TribesGame.TrDeployable.OnHealthChanged")()); }
			ScriptFunction GetWeaponStartTraceLocation() { mixin(MGF!("mGetWeaponStartTraceLocation", "Function TribesGame.TrDeployable.GetWeaponStartTraceLocation")()); }
			ScriptFunction StopsProjectile() { mixin(MGF!("mStopsProjectile", "Function TribesGame.TrDeployable.StopsProjectile")()); }
			ScriptFunction IncrementFlashCount() { mixin(MGF!("mIncrementFlashCount", "Function TribesGame.TrDeployable.IncrementFlashCount")()); }
			ScriptFunction PlayFireEffects() { mixin(MGF!("mPlayFireEffects", "Function TribesGame.TrDeployable.PlayFireEffects")()); }
			ScriptFunction PulseBackupGenerators() { mixin(MGF!("mPulseBackupGenerators", "Function TribesGame.TrDeployable.PulseBackupGenerators")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrDeployable.Destroyed")()); }
			ScriptFunction ReceivesPowerFromGenerator() { mixin(MGF!("mReceivesPowerFromGenerator", "Function TribesGame.TrDeployable.ReceivesPowerFromGenerator")()); }
			ScriptFunction GetPossessiveInstigatorName() { mixin(MGF!("mGetPossessiveInstigatorName", "Function TribesGame.TrDeployable.GetPossessiveInstigatorName")()); }
			ScriptFunction CalcOtherWatchingCam() { mixin(MGF!("mCalcOtherWatchingCam", "Function TribesGame.TrDeployable.CalcOtherWatchingCam")()); }
			ScriptFunction OnUpgradePerformed() { mixin(MGF!("mOnUpgradePerformed", "Function TribesGame.TrDeployable.OnUpgradePerformed")()); }
		}
	}
	static struct Constants
	{
		enum DEPLOYABLE_STARTING_HEALTH_PCT = 0.10f;
	}
	static struct Deploy
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable.Deploy")()); }
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable.BlownUp")()); }
	}
	@property final
	{
		auto ref
		{
			Controller m_Controller() { mixin(MGPC!("Controller", 1408)()); }
			ScriptArray!(float) m_fRelevancyCheckHeights() { mixin(MGPC!("ScriptArray!(float)", 1480)()); }
			int m_nIconStackId() { mixin(MGPC!("int", 1520)()); }
			Vector m_vDeathCamStartOffset() { mixin(MGPC!("Vector", 1508)()); }
			PlayerReplicationInfo r_OwnerPRI() { mixin(MGPC!("PlayerReplicationInfo", 1504)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_XRayMesh'!
			float m_fAnimInterpSpeed() { mixin(MGPC!("float", 1496)()); }
			AnimNodeScalePlayRate m_AnimNodeScale() { mixin(MGPC!("AnimNodeScalePlayRate", 1492)()); }
			Actor m_LastViewer() { mixin(MGPC!("Actor", 1476)()); }
			PlayerController m_LastRealViewer() { mixin(MGPC!("PlayerController", 1472)()); }
			float m_fNetRelevancyTime() { mixin(MGPC!("float", 1468)()); }
			SoundCue m_DeploySound() { mixin(MGPC!("SoundCue", 1464)()); }
			TrPowerGenerator m_MyMainGenerator() { mixin(MGPC!("TrPowerGenerator", 1460)()); }
			Pawn r_TargetPawn() { mixin(MGPC!("Pawn", 1456)()); }
			ubyte r_FlashCount() { mixin(MGPC!("ubyte", 1452)()); }
			TrSubDevice m_Weapon() { mixin(MGPC!("TrSubDevice", 1448)()); }
			TrTurretPawn m_WeaponHolder() { mixin(MGPC!("TrTurretPawn", 1444)()); }
			ScriptClass m_DeviceClass() { mixin(MGPC!("ScriptClass", 1440)()); }
			float m_fAlwaysRelevantDistanceSquared() { mixin(MGPC!("float", 1436)()); }
			float r_fNewDetectionRadius() { mixin(MGPC!("float", 1432)()); }
			float m_fDamageRadius() { mixin(MGPC!("float", 1428)()); }
			TrDeployableCollisionProxy m_CollisionProxy() { mixin(MGPC!("TrDeployableCollisionProxy", 1424)()); }
			float m_fOverriddenTargetComponentHeight() { mixin(MGPC!("float", 1420)()); }
			float m_TargetCollisionTraceDistance() { mixin(MGPC!("float", 1416)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_TargetComponent'!
			float m_fFiringArcCheckValue() { mixin(MGPC!("float", 1404)()); }
			Vector m_PlacementOrientationVector() { mixin(MGPC!("Vector", 1392)()); }
			int m_nFiringArcDegrees() { mixin(MGPC!("int", 1388)()); }
			float m_fTimeToDeploySecs() { mixin(MGPC!("float", 1380)()); }
			float m_fRemoteActivationTime() { mixin(MGPC!("float", 1376)()); }
			float m_fBuildupTime() { mixin(MGPC!("float", 1372)()); }
			TrPawn m_TouchedPlayer() { mixin(MGPC!("TrPawn", 1368)()); }
			float m_TimeCreated() { mixin(MGPC!("float", 1364)()); }
			int m_nMaxDeployablesOut() { mixin(MGPC!("int", 1360)()); }
		}
		bool m_bBlocksFriendlies() { mixin(MGBPC!(1384, 0x80)()); }
		bool m_bBlocksFriendlies(bool val) { mixin(MSBPC!(1384, 0x80)()); }
		bool m_bCanBeSpottedByVGS() { mixin(MGBPC!(1384, 0x40)()); }
		bool m_bCanBeSpottedByVGS(bool val) { mixin(MSBPC!(1384, 0x40)()); }
		bool m_bIsXRay() { mixin(MGBPC!(1384, 0x20)()); }
		bool m_bIsXRay(bool val) { mixin(MSBPC!(1384, 0x20)()); }
		bool m_bCachedRelevant() { mixin(MGBPC!(1384, 0x10)()); }
		bool m_bCachedRelevant(bool val) { mixin(MSBPC!(1384, 0x10)()); }
		bool m_bOverrideTargetComponentHeight() { mixin(MGBPC!(1384, 0x8)()); }
		bool m_bOverrideTargetComponentHeight(bool val) { mixin(MSBPC!(1384, 0x8)()); }
		bool m_bUsesArmoredMultiplier() { mixin(MGBPC!(1384, 0x4)()); }
		bool m_bUsesArmoredMultiplier(bool val) { mixin(MSBPC!(1384, 0x4)()); }
		bool m_bRequireLOS() { mixin(MGBPC!(1384, 0x2)()); }
		bool m_bRequireLOS(bool val) { mixin(MSBPC!(1384, 0x2)()); }
		bool m_bIsDeployed() { mixin(MGBPC!(1384, 0x1)()); }
		bool m_bIsDeployed(bool val) { mixin(MSBPC!(1384, 0x1)()); }
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
	bool IsInLOS(Actor TouchedActor, Vector StartLocation, Vector EndLocation, bool* CheckBlockedByBlockers = null, bool* CheckBlockedByActors = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TouchedActor;
		*cast(Vector*)&params[4] = StartLocation;
		*cast(Vector*)&params[16] = EndLocation;
		if (CheckBlockedByBlockers !is null)
			*cast(bool*)&params[28] = *CheckBlockedByBlockers;
		if (CheckBlockedByActors !is null)
			*cast(bool*)&params[32] = *CheckBlockedByActors;
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
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float* DamageFalloffExponent = null)
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
		if (DamageFalloffExponent !is null)
			*cast(float*)&params[40] = *DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
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
	Vector GetWeaponStartTraceLocation(Weapon* CurrentWeapon = null)
	{
		ubyte params[16];
		params[] = 0;
		if (CurrentWeapon !is null)
			*cast(Weapon*)params.ptr = *CurrentWeapon;
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
	void PlayFireEffects(Weapon InWeapon, bool bViaReplication, Vector* HitLocation = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		if (HitLocation !is null)
			*cast(Vector*)&params[8] = *HitLocation;
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
	bool GetPossessiveInstigatorName(ref ScriptString PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPossessiveInstigatorName, params.ptr, cast(void*)0);
		PlayerName = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool CalcOtherWatchingCam(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		*cast(TrPlayerController*)&params[32] = WatcherController;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcOtherWatchingCam, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
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

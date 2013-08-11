module UnrealScript.TribesGame.TrVehicle;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrProj_Tracer;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrVehicleStation;
import UnrealScript.TribesGame.TrHUD;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.UTGame.UTVehicleWeapon;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface TrVehicle : UTVehicle
{
	public @property final auto ref float m_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2804); }
	public @property final auto ref float r_fMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2812); }
	public @property final auto ref ScriptString m_sName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2932); }
	public @property final auto ref int m_nIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2944); }
	public @property final bool m_bClientPhysDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x100) != 0; }
	public @property final bool m_bClientPhysDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x100; } return val; }
	public @property final auto ref Actor.RigidBodyState m_ClientRBState() { return *cast(Actor.RigidBodyState*)(cast(size_t)cast(void*)this + 3136); }
	public @property final bool m_bServerCorrectionForce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x200) != 0; }
	public @property final bool m_bServerCorrectionForce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x200; } return val; }
	public @property final bool m_bImprovedLagSupport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x4) != 0; }
	public @property final bool m_bImprovedLagSupport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x4; } return val; }
	public @property final auto ref TrObject.EVehicleTypes m_VehicleType() { return *cast(TrObject.EVehicleTypes*)(cast(size_t)cast(void*)this + 2780); }
	public @property final bool m_bUsesArmoredMultiplier() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x80) != 0; }
	public @property final bool m_bUsesArmoredMultiplier(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x80; } return val; }
	public @property final auto ref ScriptString m_sWeapon1Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3092); }
	public @property final auto ref ScriptString m_sWeapon2Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3104); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialImpactEffect) m_DustEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 2948); }
	public @property final auto ref float m_fMaxPawnLeaveSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3208); }
	public @property final auto ref int m_nDetectedByEnemyScannerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3204); }
	public @property final auto ref int m_nServerTickCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3200); }
	public @property final auto ref float m_fClientPhysDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3120); }
	public @property final auto ref TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 3116); }
	public @property final auto ref Vector m_vDeathCamStartOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3080); }
	public @property final auto ref float m_fVehicleHealthBarHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 3076); }
	public @property final auto ref float m_fVehicleHealthBarWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 3072); }
	public @property final auto ref float m_fVehicleHealthBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 3068); }
	public @property final auto ref float m_fVehicleHealthBarPlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 3064); }
	public @property final auto ref MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3060); }
	public @property final auto ref MaterialInstanceConstant m_Passenger4HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3056); }
	public @property final auto ref MaterialInstanceConstant m_Passenger3HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3052); }
	public @property final auto ref MaterialInstanceConstant m_Passenger2HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3048); }
	public @property final auto ref MaterialInstanceConstant m_Passenger1HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3044); }
	public @property final auto ref MaterialInstanceConstant m_DriverHealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3040); }
	public @property final auto ref MaterialInstanceConstant m_HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3036); }
	public @property final auto ref float m_fRemainingSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3032); }
	public @property final auto ref Rotator m_rPotentialSeekingTargetHUDRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3020); }
	public @property final auto ref float m_fRemainingPotentialSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3016); }
	public @property final auto ref float m_fContrailSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3012); }
	public @property final auto ref UDKPawn.MaterialImpactEffect m_DefaultDustEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 2960); }
	public @property final auto ref float ShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 2928); }
	public @property final auto ref float m_fBoostFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2920); }
	public @property final auto ref float m_fBoostFadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2916); }
	public @property final auto ref float m_fDivingMaxSpeedMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2912); }
	public @property final auto ref int r_nBaseMaxSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 2908); }
	public @property final auto ref float m_fWallDamageTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2904); }
	public @property final auto ref float m_fLastWallDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2900); }
	public @property final auto ref float m_fWallMaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2896); }
	public @property final auto ref float m_fWallMinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2892); }
	public @property final auto ref float m_fWallMinDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2888); }
	public @property final auto ref float m_fWallMaxDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2884); }
	public @property final auto ref ScriptClass WallCollisionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2880); }
	public @property final auto ref float m_fVehicleDamageTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2876); }
	public @property final auto ref float m_fLastVehicleDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2872); }
	public @property final auto ref float m_fVehicleMaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2868); }
	public @property final auto ref float m_fVehicleMinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2864); }
	public @property final auto ref float m_fVehicleMinDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2860); }
	public @property final auto ref float m_fVehicleMaxDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2856); }
	public @property final auto ref ScriptClass VehicleCollisionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2852); }
	public @property final auto ref float m_fPawnDamageTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2848); }
	public @property final auto ref float m_fPawnMaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2844); }
	public @property final auto ref float m_fPawnMinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2840); }
	public @property final auto ref float m_fPawnMaxDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2836); }
	public @property final auto ref float m_fPawnPushSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2832); }
	public @property final auto ref float m_fFlagPushSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2828); }
	public @property final auto ref float m_CrashDamageSeverity() { return *cast(float*)(cast(size_t)cast(void*)this + 2824); }
	public @property final auto ref float m_fPowerPoolTickRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2820); }
	public @property final auto ref float m_fPowerPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2816); }
	public @property final auto ref float r_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2808); }
	public @property final auto ref float m_fBoostReactivatePct() { return *cast(float*)(cast(size_t)cast(void*)this + 2800); }
	public @property final auto ref float m_fBoostEnergyPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 2796); }
	public @property final auto ref float m_fBoostMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2792); }
	public @property final auto ref float m_fTimeToReset() { return *cast(float*)(cast(size_t)cast(void*)this + 2788); }
	public @property final auto ref TrVehicleStation m_OwnerStation() { return *cast(TrVehicleStation*)(cast(size_t)cast(void*)this + 2784); }
	public @property final auto ref TrObject.EMissileLock m_MissileLockStatus() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2782); }
	public @property final auto ref TrObject.EMissileLock r_MissileLock() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2781); }
	public @property final bool r_bDetectedByEnemyScanner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x400) != 0; }
	public @property final bool r_bDetectedByEnemyScanner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x400; } return val; }
	public @property final bool r_LevelFlightEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x40) != 0; }
	public @property final bool r_LevelFlightEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x40; } return val; }
	public @property final bool m_bLowPowerPool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x20) != 0; }
	public @property final bool m_bLowPowerPool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x20; } return val; }
	public @property final bool r_BoostersEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x10) != 0; }
	public @property final bool r_BoostersEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x10; } return val; }
	public @property final bool r_bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x8) != 0; }
	public @property final bool r_bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x8; } return val; }
	public @property final bool m_bBoostRequiresThrust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x2) != 0; }
	public @property final bool m_bBoostRequiresThrust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x2; } return val; }
	public @property final bool m_bPostSpawnLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x1) != 0; }
	public @property final bool m_bPostSpawnLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x1; } return val; }
	public @property final auto ref TrPawn m_PawnToTeleport() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 2772); }
	public @property final auto ref Pawn Passenger() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 2756); }
	final bool IsEmpty()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71964], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool RidingPawnLeave(int SeatIndex, bool bForceLeave)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73029], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final int GetSeatIndexForController(Controller ControllerToMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76774], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool CalcOtherWatchingCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		*cast(TrPlayerController*)&params[32] = WatcherController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77526], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[36];
	}
	final bool SetScannerDetect(bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79956], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107771], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114071], params.ptr, cast(void*)0);
	}
	final void ConsumePowerPool(float fAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114076], params.ptr, cast(void*)0);
	}
	final float GetPowerPoolPercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114078], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void RegainPowerPool(float fDeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114080], params.ptr, cast(void*)0);
	}
	final void SyncClientCurrentPowerPool()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114082], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114083], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114087], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114088], params.ptr, cast(void*)0);
	}
	final void SetDetectedByEnemyScanner(bool detected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114094], params.ptr, cast(void*)0);
	}
	final bool GetDetectedByEnemyScanner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114096], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114099], params.ptr, cast(void*)0);
	}
	final Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114101], params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	final float GetDamageAmountForCollision(float Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114103], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComponent, Actor.CollisionImpactData* Collision, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *Collision;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114106], params.ptr, cast(void*)0);
		*Collision = *cast(Actor.CollisionImpactData*)&params[8];
	}
	final void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114120], params.ptr, cast(void*)0);
	}
	final void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114133], params.ptr, cast(void*)0);
	}
	final void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114136], params.ptr, cast(void*)0);
	}
	final void SetPawnToTeleport(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114139], params.ptr, cast(void*)0);
	}
	final void SetPostSpawnLocked(bool bLocked)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bLocked;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114145], params.ptr, cast(void*)0);
	}
	final void SendLockOnMessage(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114147], params.ptr, cast(void*)0);
	}
	final bool Died(Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114151], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final void KillControllerForTeamChange(Controller ControllerToKill)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToKill;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114161], params.ptr, cast(void*)0);
	}
	final void TeleportDriverToSeat()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114165], cast(void*)0, cast(void*)0);
	}
	final bool CanArmorDriveVehicle(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114166], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CanArmorEnterVehicle(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114171], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int GetFirstAvailableSeat(bool bSeatMustAllowFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeatMustAllowFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114176], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114180], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114192], cast(void*)0, cast(void*)0);
	}
	final void PassengerLeave(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114197], params.ptr, cast(void*)0);
	}
	final void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114200], cast(void*)0, cast(void*)0);
	}
	final void ResetResetTime()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114201], cast(void*)0, cast(void*)0);
	}
	final void HandleMomentum(Vector Momentum, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = Momentum;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114202], params.ptr, cast(void*)0);
	}
	final void ToggleBoosters(bool bEnabled, bool ToggleTimer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(bool*)&params[4] = ToggleTimer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114207], params.ptr, cast(void*)0);
	}
	final void ConsumeBoostPowerPool()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114211], cast(void*)0, cast(void*)0);
	}
	final bool CanActivateBoosters()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114212], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldRechargePowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114214], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ServerToggleLevelFlight(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114216], params.ptr, cast(void*)0);
	}
	final void BoostSoundFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114218], params.ptr, cast(void*)0);
	}
	final void PlayBoosterEffects(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114220], params.ptr, cast(void*)0);
	}
	final void PlayMissileLockSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114222], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114225], params.ptr, cast(void*)0);
	}
	final bool Occupied()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114227], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114230], params.ptr, cast(void*)0);
	}
	final bool RenderDriverPassengerMarker(Canvas pCanvas, bool friendly, TrHUD HUD, TrPlayerController TrPC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(bool*)&params[4] = friendly;
		*cast(TrHUD*)&params[8] = HUD;
		*cast(TrPlayerController*)&params[12] = TrPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114261], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void SetSeatStoragePawn(int SeatIndex, Pawn PawnToSit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Pawn*)&params[4] = PawnToSit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114278], params.ptr, cast(void*)0);
	}
	final void GetSVehicleDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114282], params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	final void InitializeSeats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114285], cast(void*)0, cast(void*)0);
	}
	final bool PassengerEnter(Pawn P, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114294], params.ptr, cast(void*)0);
	}
	final void AttachRidingPawn(TrPawn PawnToSit, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnToSit;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114296], params.ptr, cast(void*)0);
	}
	final void DetachRidingPawn(TrPawn PawnLeft)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnLeft;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114300], params.ptr, cast(void*)0);
	}
	final void UpdateSeatAnimations(TrPawn PawnToSit, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnToSit;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114302], params.ptr, cast(void*)0);
	}
	final void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114311], params.ptr, cast(void*)0);
	}
	final void HandleEnteringFlag(UTPlayerReplicationInfo EnteringPRI, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = EnteringPRI;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114313], params.ptr, cast(void*)0);
	}
	final bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114323], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final PlayerReplicationInfo GetSeatPRI(int SeatNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114329], params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	final void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114332], params.ptr, cast(void*)0);
	}
	final void SwitchSeat(int RequestedSeat, Controller ControllerRequestingSeatChange)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		*cast(Controller*)&params[4] = ControllerRequestingSeatChange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114334], params.ptr, cast(void*)0);
	}
	final bool ChangeSeat(Controller ControllerToMove, int RequestedSeat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		*cast(int*)&params[4] = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114337], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114344], params.ptr, cast(void*)0);
	}
	final int GetSeatIndexForStoragePawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114348], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool PlaceExitingDriver(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114352], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool TryExitPos(Pawn ExitingDriver, Vector ExitPos, bool bMustFindGround)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		*cast(Vector*)&params[4] = ExitPos;
		*cast(bool*)&params[16] = bMustFindGround;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114359], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool SeatAvailable(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114369], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114372], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114375], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	final void WeaponRotationChanged(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114385], params.ptr, cast(void*)0);
	}
	final bool HealDamage(int Amount, Controller Healer, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114390], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void DoRepairs(int HealAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114395], params.ptr, cast(void*)0);
	}
	final void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass DamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = DamageRadius;
		*cast(Controller*)&params[8] = EventInstigator;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(Actor*)&params[32] = DamageCauser;
		*cast(float*)&params[36] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114405], params.ptr, cast(void*)0);
	}
	final void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114423], cast(void*)0, cast(void*)0);
	}
	final void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114424], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114440], params.ptr, cast(void*)0);
	}
	final void CheckDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114472], cast(void*)0, cast(void*)0);
	}
	final void BlowupVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114474], cast(void*)0, cast(void*)0);
	}
	final void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114475], params.ptr, cast(void*)0);
	}
	final void VehicleWeaponStoppedFiring(bool bViaReplication, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114479], params.ptr, cast(void*)0);
	}
	final void ThirdPersonFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114484], params.ptr, cast(void*)0);
	}
	final void SpawnTracerBeam(Vector Start, Vector End, ParticleSystem TracerBeamTemplate)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(ParticleSystem*)&params[24] = TracerBeamTemplate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114496], params.ptr, cast(void*)0);
	}
	final TrProj_Tracer SpawnTracerEffect(TrObject.EWeaponTracerType TracerType, Vector EffectLocation, Vector HitLocation, float HitDistance)
	{
		ubyte params[33];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		*cast(Vector*)&params[4] = EffectLocation;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(float*)&params[28] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114501], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[32];
	}
	final void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114510], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	final void ProcessViewRotationBasedOnSeat(int SeatIndex, float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114514], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
	}
	final bool ShouldShowUseable(PlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114519], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void SetDriving(bool bNewDriving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewDriving;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114523], params.ptr, cast(void*)0);
	}
	final void PlayVehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114525], params.ptr, cast(void*)0);
	}
	final void VehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114527], params.ptr, cast(void*)0);
	}
	final void PlayClientVehicleSound(ScriptName SoundTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114529], params.ptr, cast(void*)0);
	}
	final void MigrateVehicleSounds(Pawn P, bool bIsRiding)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(bool*)&params[4] = bIsRiding;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114533], params.ptr, cast(void*)0);
	}
	final void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114538], cast(void*)0, cast(void*)0);
	}
	final Vector GetCameraFocus(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114553], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114563], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void PlayHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114639], cast(void*)0, cast(void*)0);
	}
	final void GoInvulnerable(float InvulnerableTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InvulnerableTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114640], params.ptr, cast(void*)0);
	}
	final void ClearInvulnerability()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114642], cast(void*)0, cast(void*)0);
	}
}

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
	public static immutable auto DEPLOYABLE_STARTING_HEALTH_PCT = 0.10f;
	public @property final auto ref Controller m_Controller() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref ScriptArray!(float) m_fRelevancyCheckHeights() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref int m_nIconStackId() { return *cast(int*)(cast(size_t)cast(void*)this + 1520); }
	public @property final auto ref Vector m_vDeathCamStartOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1508); }
	public @property final auto ref PlayerReplicationInfo r_OwnerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref float m_fAnimInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1496); }
	public @property final auto ref AnimNodeScalePlayRate m_AnimNodeScale() { return *cast(AnimNodeScalePlayRate*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref Actor m_LastViewer() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1476); }
	public @property final auto ref PlayerController m_LastRealViewer() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref float m_fNetRelevancyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1468); }
	public @property final auto ref SoundCue m_DeploySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1464); }
	public @property final auto ref TrPowerGenerator m_MyMainGenerator() { return *cast(TrPowerGenerator*)(cast(size_t)cast(void*)this + 1460); }
	public @property final auto ref Pawn r_TargetPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref ubyte r_FlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1452); }
	public @property final auto ref TrSubDevice m_Weapon() { return *cast(TrSubDevice*)(cast(size_t)cast(void*)this + 1448); }
	public @property final auto ref TrTurretPawn m_WeaponHolder() { return *cast(TrTurretPawn*)(cast(size_t)cast(void*)this + 1444); }
	public @property final auto ref ScriptClass m_DeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1440); }
	public @property final auto ref float m_fAlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
	public @property final auto ref float r_fNewDetectionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref float m_fDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1428); }
	public @property final auto ref TrDeployableCollisionProxy m_CollisionProxy() { return *cast(TrDeployableCollisionProxy*)(cast(size_t)cast(void*)this + 1424); }
	public @property final auto ref float m_fOverriddenTargetComponentHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
	public @property final auto ref float m_TargetCollisionTraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1416); }
	public @property final auto ref float m_fFiringArcCheckValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref Vector m_PlacementOrientationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref int m_nFiringArcDegrees() { return *cast(int*)(cast(size_t)cast(void*)this + 1388); }
	public @property final bool m_bBlocksFriendlies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x80) != 0; }
	public @property final bool m_bBlocksFriendlies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x80; } return val; }
	public @property final bool m_bCanBeSpottedByVGS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x40) != 0; }
	public @property final bool m_bCanBeSpottedByVGS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x40; } return val; }
	public @property final bool m_bIsXRay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x20) != 0; }
	public @property final bool m_bIsXRay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x20; } return val; }
	public @property final bool m_bCachedRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x10) != 0; }
	public @property final bool m_bCachedRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x10; } return val; }
	public @property final bool m_bOverrideTargetComponentHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x8) != 0; }
	public @property final bool m_bOverrideTargetComponentHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x8; } return val; }
	public @property final bool m_bUsesArmoredMultiplier() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x4) != 0; }
	public @property final bool m_bUsesArmoredMultiplier(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x4; } return val; }
	public @property final bool m_bRequireLOS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x2) != 0; }
	public @property final bool m_bRequireLOS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x2; } return val; }
	public @property final bool m_bIsDeployed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1384) & 0x1) != 0; }
	public @property final bool m_bIsDeployed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1384) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1384) &= ~0x1; } return val; }
	public @property final auto ref float m_fTimeToDeploySecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref float m_fRemoteActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
	public @property final auto ref float m_fBuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref TrPawn m_TouchedPlayer() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref float m_TimeCreated() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
	public @property final auto ref int m_nMaxDeployablesOut() { return *cast(int*)(cast(size_t)cast(void*)this + 1360); }
	final void AdjustMeshToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71758], cast(void*)0, cast(void*)0);
	}
	final float CalcMeshOffset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71759], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool IsInLOS(Actor TouchedActor, Vector StartLocation, Vector EndLocation, bool CheckBlockedByBlockers, bool CheckBlockedByActors)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Actor*)params.ptr = TouchedActor;
		*cast(Vector*)&params[4] = StartLocation;
		*cast(Vector*)&params[16] = EndLocation;
		*cast(bool*)&params[28] = CheckBlockedByBlockers;
		*cast(bool*)&params[32] = CheckBlockedByActors;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71761], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	final void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71768], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71771], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71773], params.ptr, cast(void*)0);
	}
	final void OnPRIReplicated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71775], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71777], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71779], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71793], params.ptr, cast(void*)0);
	}
	final void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71822], params.ptr, cast(void*)0);
	}
	final void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71824], params.ptr, cast(void*)0);
	}
	final void OnVehicleDetectedByCollisionProxy(TrVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71826], params.ptr, cast(void*)0);
	}
	final void OnVehicleExitedCollisionProxy(TrVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71828], params.ptr, cast(void*)0);
	}
	final void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71830], cast(void*)0, cast(void*)0);
	}
	final void SetInstigatorController(TrPlayerController InstigatorController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = InstigatorController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71831], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71838], cast(void*)0, cast(void*)0);
	}
	final float GetDamageRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71841], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void FinalizeDeployment()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71848], cast(void*)0, cast(void*)0);
	}
	final void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71850], cast(void*)0, cast(void*)0);
	}
	final bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71851], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void UpdateHealthMaterial()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71860], cast(void*)0, cast(void*)0);
	}
	final void OnHealthChanged(bool wasDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = wasDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71864], params.ptr, cast(void*)0);
	}
	final Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71866], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71869], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void IncrementFlashCount(Weapon W, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71873], params.ptr, cast(void*)0);
	}
	final void PlayFireEffects(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71877], params.ptr, cast(void*)0);
	}
	final void PulseBackupGenerators()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71881], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71883], cast(void*)0, cast(void*)0);
	}
	final bool ReceivesPowerFromGenerator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71889], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool GetPossessiveInstigatorName(ScriptString* PlayerName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71893], params.ptr, cast(void*)0);
		*PlayerName = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71896], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[36];
	}
	final void OnUpgradePerformed(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71914], params.ptr, cast(void*)0);
	}
}

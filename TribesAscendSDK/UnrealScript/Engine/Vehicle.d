module UnrealScript.Engine.Vehicle;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.HUD;

extern(C++) interface Vehicle : Pawn
{
public extern(D):
	@property final
	{
		auto ref
		{
			Pawn Driver() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1144); }
			ScriptArray!(Vector) ExitPositions() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1152); }
			float TurnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
			float VehicleMovingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
			float AIMoveCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
			float OldThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
			float OnlySteeringStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1240); }
			float OldSteering() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
			float StuckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
			float ThrottleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
			ubyte StuckCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1224); }
			float ForceCrushPenetration() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
			float MinCrushSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1216); }
			ScriptClass CrushedDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1212); }
			float MomentumMult() { return *cast(float*)(cast(size_t)cast(void*)this + 1208); }
			float DriverDamageMult() { return *cast(float*)(cast(size_t)cast(void*)this + 1204); }
			Vector TargetLocationAdjustment() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1192); }
			float Rise() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
			float Throttle() { return *cast(float*)(cast(size_t)cast(void*)this + 1184); }
			float Steering() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
			Vector ExitOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1168); }
			float ExitRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1164); }
		}
		bool bDoExtraNetRelevancyTraces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x1000) != 0; }
		bool bDoExtraNetRelevancyTraces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x1000; } return val; }
		bool bIgnoreStallZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x800) != 0; }
		bool bIgnoreStallZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x800; } return val; }
		bool bRetryPathfindingWithDriver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x400) != 0; }
		bool bRetryPathfindingWithDriver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x400; } return val; }
		bool bAvoidReversing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x200) != 0; }
		bool bAvoidReversing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x200; } return val; }
		bool bDuckObstacles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x100) != 0; }
		bool bDuckObstacles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x100; } return val; }
		bool bScriptedRise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x80) != 0; }
		bool bScriptedRise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x80; } return val; }
		bool bHasHandbrake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x40) != 0; }
		bool bHasHandbrake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x40; } return val; }
		bool bFollowLookDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x20) != 0; }
		bool bFollowLookDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x20; } return val; }
		bool bSeparateTurretFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x10) != 0; }
		bool bSeparateTurretFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x10; } return val; }
		bool bTurnInPlace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x8) != 0; }
		bool bTurnInPlace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x8; } return val; }
		bool bAttachDriver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x4) != 0; }
		bool bAttachDriver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x4; } return val; }
		bool bDriverIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x2) != 0; }
		bool bDriverIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x2; } return val; }
		bool bDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1148) & 0x1) != 0; }
		bool bDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1148) &= ~0x1; } return val; }
	}
final:
	bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6005], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6008], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27262], cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27263], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27268], cast(void*)0, cast(void*)0);
	}
	float GetMaxRiseForce()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27269], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27271], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27275], params.ptr, cast(void*)0);
	}
	void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass pDamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = DamageRadius;
		*cast(Controller*)&params[8] = EventInstigator;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(Actor*)&params[32] = DamageCauser;
		*cast(float*)&params[36] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27285], params.ptr, cast(void*)0);
	}
	void PlayerChangedTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27294], cast(void*)0, cast(void*)0);
	}
	void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27295], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27296], cast(void*)0, cast(void*)0);
	}
	bool CheatWalk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27297], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatGhost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27299], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatFly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27301], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27303], cast(void*)0, cast(void*)0);
	}
	void Destroyed_HandleDriver()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27304], cast(void*)0, cast(void*)0);
	}
	bool CanEnterVehicle(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27306], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27309], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27312], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27316], params.ptr, cast(void*)0);
	}
	void EntryAnnouncement(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27319], params.ptr, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27321], params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27323], params.ptr, cast(void*)0);
	}
	bool ContinueOnFoot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27325], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetExitRotation(Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27327], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27335], params.ptr, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27339], cast(void*)0, cast(void*)0);
	}
	bool PlaceExitingDriver(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27340], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FindAutoExit(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27349], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryExitPos(Pawn ExitingDriver, Vector ExitPos, bool bMustFindGround)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		*cast(Vector*)&params[4] = ExitPos;
		*cast(bool*)&params[16] = bMustFindGround;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27355], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void UnPossessed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27366], cast(void*)0, cast(void*)0);
	}
	Controller SetKillInstigator(Controller InstigatedBy, ScriptClass pDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(ScriptClass*)&params[4] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27367], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27371], params.ptr, cast(void*)0);
	}
	void AdjustDriverDamage(int* Damage, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass pDamageType)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = *Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27379], params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[20];
	}
	void ThrowActiveWeapon(bool bDestroyWeap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27385], params.ptr, cast(void*)0);
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27387], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void DriverDied(ScriptClass pDamageType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27392], params.ptr, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27396], params.ptr, cast(void*)0);
	}
	ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27399], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27402], params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27405], params.ptr, cast(void*)0);
	}
	Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27407], params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27409], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27417], params.ptr, cast(void*)0);
	}
	void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27419], params.ptr, cast(void*)0);
	}
	Vector GetEntryLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27421], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetDriving(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27423], params.ptr, cast(void*)0);
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27425], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27426], params.ptr, cast(void*)0);
	}
	void NotifyDriverTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27428], params.ptr, cast(void*)0);
	}
	void ZeroMovementVariables()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27434], cast(void*)0, cast(void*)0);
	}
}

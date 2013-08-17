module UnrealScript.Engine.Vehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.HUD;

extern(C++) interface Vehicle : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Vehicle")); }
	private static __gshared Vehicle mDefaultProperties;
	@property final static Vehicle DefaultProperties() { mixin(MGDPC("Vehicle", "Vehicle Engine.Default__Vehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDriverLeave;
			ScriptFunction mTryToDrive;
			ScriptFunction mNotifyTeamChanged;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSuicide;
			ScriptFunction mGetMaxRiseForce;
			ScriptFunction mGetTargetLocation;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mDriverRadiusDamage;
			ScriptFunction mPlayerChangedTeam;
			ScriptFunction mSetBaseEyeheight;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCheatWalk;
			ScriptFunction mCheatGhost;
			ScriptFunction mCheatFly;
			ScriptFunction mDestroyed;
			ScriptFunction mDestroyed_HandleDriver;
			ScriptFunction mCanEnterVehicle;
			ScriptFunction mAnySeatAvailable;
			ScriptFunction mDriverEnter;
			ScriptFunction mPossessedBy;
			ScriptFunction mEntryAnnouncement;
			ScriptFunction mAttachDriver;
			ScriptFunction mDetachDriver;
			ScriptFunction mContinueOnFoot;
			ScriptFunction mGetExitRotation;
			ScriptFunction mSetInputs;
			ScriptFunction mDriverLeft;
			ScriptFunction mPlaceExitingDriver;
			ScriptFunction mFindAutoExit;
			ScriptFunction mTryExitPos;
			ScriptFunction mUnPossessed;
			ScriptFunction mSetKillInstigator;
			ScriptFunction mTakeDamage;
			ScriptFunction mAdjustDriverDamage;
			ScriptFunction mThrowActiveWeapon;
			ScriptFunction mDied;
			ScriptFunction mDriverDied;
			ScriptFunction mPlayDying;
			ScriptFunction mGetDefaultCameraMode;
			ScriptFunction mFaceRotation;
			ScriptFunction mEncroachedBy;
			ScriptFunction mGetCollisionDamageInstigator;
			ScriptFunction mEncroachingOn;
			ScriptFunction mPancakeOther;
			ScriptFunction mCrushedBy;
			ScriptFunction mGetEntryLocation;
			ScriptFunction mSetDriving;
			ScriptFunction mDrivingStatusChanged;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mNotifyDriverTakeHit;
			ScriptFunction mZeroMovementVariables;
		}
		public @property static final
		{
			ScriptFunction DriverLeave() { mixin(MGF("mDriverLeave", "Function Engine.Vehicle.DriverLeave")); }
			ScriptFunction TryToDrive() { mixin(MGF("mTryToDrive", "Function Engine.Vehicle.TryToDrive")); }
			ScriptFunction NotifyTeamChanged() { mixin(MGF("mNotifyTeamChanged", "Function Engine.Vehicle.NotifyTeamChanged")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function Engine.Vehicle.DisplayDebug")); }
			ScriptFunction Suicide() { mixin(MGF("mSuicide", "Function Engine.Vehicle.Suicide")); }
			ScriptFunction GetMaxRiseForce() { mixin(MGF("mGetMaxRiseForce", "Function Engine.Vehicle.GetMaxRiseForce")); }
			ScriptFunction GetTargetLocation() { mixin(MGF("mGetTargetLocation", "Function Engine.Vehicle.GetTargetLocation")); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF("mTakeRadiusDamage", "Function Engine.Vehicle.TakeRadiusDamage")); }
			ScriptFunction DriverRadiusDamage() { mixin(MGF("mDriverRadiusDamage", "Function Engine.Vehicle.DriverRadiusDamage")); }
			ScriptFunction PlayerChangedTeam() { mixin(MGF("mPlayerChangedTeam", "Function Engine.Vehicle.PlayerChangedTeam")); }
			ScriptFunction SetBaseEyeheight() { mixin(MGF("mSetBaseEyeheight", "Function Engine.Vehicle.SetBaseEyeheight")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Vehicle.PostBeginPlay")); }
			ScriptFunction CheatWalk() { mixin(MGF("mCheatWalk", "Function Engine.Vehicle.CheatWalk")); }
			ScriptFunction CheatGhost() { mixin(MGF("mCheatGhost", "Function Engine.Vehicle.CheatGhost")); }
			ScriptFunction CheatFly() { mixin(MGF("mCheatFly", "Function Engine.Vehicle.CheatFly")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.Vehicle.Destroyed")); }
			ScriptFunction Destroyed_HandleDriver() { mixin(MGF("mDestroyed_HandleDriver", "Function Engine.Vehicle.Destroyed_HandleDriver")); }
			ScriptFunction CanEnterVehicle() { mixin(MGF("mCanEnterVehicle", "Function Engine.Vehicle.CanEnterVehicle")); }
			ScriptFunction AnySeatAvailable() { mixin(MGF("mAnySeatAvailable", "Function Engine.Vehicle.AnySeatAvailable")); }
			ScriptFunction DriverEnter() { mixin(MGF("mDriverEnter", "Function Engine.Vehicle.DriverEnter")); }
			ScriptFunction PossessedBy() { mixin(MGF("mPossessedBy", "Function Engine.Vehicle.PossessedBy")); }
			ScriptFunction EntryAnnouncement() { mixin(MGF("mEntryAnnouncement", "Function Engine.Vehicle.EntryAnnouncement")); }
			ScriptFunction AttachDriver() { mixin(MGF("mAttachDriver", "Function Engine.Vehicle.AttachDriver")); }
			ScriptFunction DetachDriver() { mixin(MGF("mDetachDriver", "Function Engine.Vehicle.DetachDriver")); }
			ScriptFunction ContinueOnFoot() { mixin(MGF("mContinueOnFoot", "Function Engine.Vehicle.ContinueOnFoot")); }
			ScriptFunction GetExitRotation() { mixin(MGF("mGetExitRotation", "Function Engine.Vehicle.GetExitRotation")); }
			ScriptFunction SetInputs() { mixin(MGF("mSetInputs", "Function Engine.Vehicle.SetInputs")); }
			ScriptFunction DriverLeft() { mixin(MGF("mDriverLeft", "Function Engine.Vehicle.DriverLeft")); }
			ScriptFunction PlaceExitingDriver() { mixin(MGF("mPlaceExitingDriver", "Function Engine.Vehicle.PlaceExitingDriver")); }
			ScriptFunction FindAutoExit() { mixin(MGF("mFindAutoExit", "Function Engine.Vehicle.FindAutoExit")); }
			ScriptFunction TryExitPos() { mixin(MGF("mTryExitPos", "Function Engine.Vehicle.TryExitPos")); }
			ScriptFunction UnPossessed() { mixin(MGF("mUnPossessed", "Function Engine.Vehicle.UnPossessed")); }
			ScriptFunction SetKillInstigator() { mixin(MGF("mSetKillInstigator", "Function Engine.Vehicle.SetKillInstigator")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function Engine.Vehicle.TakeDamage")); }
			ScriptFunction AdjustDriverDamage() { mixin(MGF("mAdjustDriverDamage", "Function Engine.Vehicle.AdjustDriverDamage")); }
			ScriptFunction ThrowActiveWeapon() { mixin(MGF("mThrowActiveWeapon", "Function Engine.Vehicle.ThrowActiveWeapon")); }
			ScriptFunction Died() { mixin(MGF("mDied", "Function Engine.Vehicle.Died")); }
			ScriptFunction DriverDied() { mixin(MGF("mDriverDied", "Function Engine.Vehicle.DriverDied")); }
			ScriptFunction PlayDying() { mixin(MGF("mPlayDying", "Function Engine.Vehicle.PlayDying")); }
			ScriptFunction GetDefaultCameraMode() { mixin(MGF("mGetDefaultCameraMode", "Function Engine.Vehicle.GetDefaultCameraMode")); }
			ScriptFunction FaceRotation() { mixin(MGF("mFaceRotation", "Function Engine.Vehicle.FaceRotation")); }
			ScriptFunction EncroachedBy() { mixin(MGF("mEncroachedBy", "Function Engine.Vehicle.EncroachedBy")); }
			ScriptFunction GetCollisionDamageInstigator() { mixin(MGF("mGetCollisionDamageInstigator", "Function Engine.Vehicle.GetCollisionDamageInstigator")); }
			ScriptFunction EncroachingOn() { mixin(MGF("mEncroachingOn", "Function Engine.Vehicle.EncroachingOn")); }
			ScriptFunction PancakeOther() { mixin(MGF("mPancakeOther", "Function Engine.Vehicle.PancakeOther")); }
			ScriptFunction CrushedBy() { mixin(MGF("mCrushedBy", "Function Engine.Vehicle.CrushedBy")); }
			ScriptFunction GetEntryLocation() { mixin(MGF("mGetEntryLocation", "Function Engine.Vehicle.GetEntryLocation")); }
			ScriptFunction SetDriving() { mixin(MGF("mSetDriving", "Function Engine.Vehicle.SetDriving")); }
			ScriptFunction DrivingStatusChanged() { mixin(MGF("mDrivingStatusChanged", "Function Engine.Vehicle.DrivingStatusChanged")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.Vehicle.ReplicatedEvent")); }
			ScriptFunction NotifyDriverTakeHit() { mixin(MGF("mNotifyDriverTakeHit", "Function Engine.Vehicle.NotifyDriverTakeHit")); }
			ScriptFunction ZeroMovementVariables() { mixin(MGF("mZeroMovementVariables", "Function Engine.Vehicle.ZeroMovementVariables")); }
		}
	}
	@property final
	{
		auto ref
		{
			Pawn Driver() { mixin(MGPC("Pawn", 1144)); }
			ScriptArray!(Vector) ExitPositions() { mixin(MGPC("ScriptArray!(Vector)", 1152)); }
			float TurnTime() { mixin(MGPC("float", 1256)); }
			float VehicleMovingTime() { mixin(MGPC("float", 1252)); }
			float AIMoveCheckTime() { mixin(MGPC("float", 1248)); }
			float OldThrottle() { mixin(MGPC("float", 1244)); }
			float OnlySteeringStartTime() { mixin(MGPC("float", 1240)); }
			float OldSteering() { mixin(MGPC("float", 1236)); }
			float StuckTime() { mixin(MGPC("float", 1232)); }
			float ThrottleTime() { mixin(MGPC("float", 1228)); }
			ubyte StuckCount() { mixin(MGPC("ubyte", 1224)); }
			float ForceCrushPenetration() { mixin(MGPC("float", 1220)); }
			float MinCrushSpeed() { mixin(MGPC("float", 1216)); }
			ScriptClass CrushedDamageType() { mixin(MGPC("ScriptClass", 1212)); }
			float MomentumMult() { mixin(MGPC("float", 1208)); }
			float DriverDamageMult() { mixin(MGPC("float", 1204)); }
			Vector TargetLocationAdjustment() { mixin(MGPC("Vector", 1192)); }
			float Rise() { mixin(MGPC("float", 1188)); }
			float Throttle() { mixin(MGPC("float", 1184)); }
			float Steering() { mixin(MGPC("float", 1180)); }
			Vector ExitOffset() { mixin(MGPC("Vector", 1168)); }
			float ExitRadius() { mixin(MGPC("float", 1164)); }
		}
		bool bDoExtraNetRelevancyTraces() { mixin(MGBPC(1148, 0x1000)); }
		bool bDoExtraNetRelevancyTraces(bool val) { mixin(MSBPC(1148, 0x1000)); }
		bool bIgnoreStallZ() { mixin(MGBPC(1148, 0x800)); }
		bool bIgnoreStallZ(bool val) { mixin(MSBPC(1148, 0x800)); }
		bool bRetryPathfindingWithDriver() { mixin(MGBPC(1148, 0x400)); }
		bool bRetryPathfindingWithDriver(bool val) { mixin(MSBPC(1148, 0x400)); }
		bool bAvoidReversing() { mixin(MGBPC(1148, 0x200)); }
		bool bAvoidReversing(bool val) { mixin(MSBPC(1148, 0x200)); }
		bool bDuckObstacles() { mixin(MGBPC(1148, 0x100)); }
		bool bDuckObstacles(bool val) { mixin(MSBPC(1148, 0x100)); }
		bool bScriptedRise() { mixin(MGBPC(1148, 0x80)); }
		bool bScriptedRise(bool val) { mixin(MSBPC(1148, 0x80)); }
		bool bHasHandbrake() { mixin(MGBPC(1148, 0x40)); }
		bool bHasHandbrake(bool val) { mixin(MSBPC(1148, 0x40)); }
		bool bFollowLookDir() { mixin(MGBPC(1148, 0x20)); }
		bool bFollowLookDir(bool val) { mixin(MSBPC(1148, 0x20)); }
		bool bSeparateTurretFocus() { mixin(MGBPC(1148, 0x10)); }
		bool bSeparateTurretFocus(bool val) { mixin(MSBPC(1148, 0x10)); }
		bool bTurnInPlace() { mixin(MGBPC(1148, 0x8)); }
		bool bTurnInPlace(bool val) { mixin(MSBPC(1148, 0x8)); }
		bool bAttachDriver() { mixin(MGBPC(1148, 0x4)); }
		bool bAttachDriver(bool val) { mixin(MSBPC(1148, 0x4)); }
		bool bDriverIsVisible() { mixin(MGBPC(1148, 0x2)); }
		bool bDriverIsVisible(bool val) { mixin(MSBPC(1148, 0x2)); }
		bool bDriving() { mixin(MGBPC(1148, 0x1)); }
		bool bDriving(bool val) { mixin(MSBPC(1148, 0x1)); }
	}
final:
	bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeave, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTeamChanged, cast(void*)0, cast(void*)0);
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
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Suicide, cast(void*)0, cast(void*)0);
	}
	float GetMaxRiseForce()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxRiseForce, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetTargetLocation(Actor* RequestedBy = null, bool* bRequestAlternateLoc = null)
	{
		ubyte params[20];
		params[] = 0;
		if (RequestedBy !is null)
			*cast(Actor*)params.ptr = *RequestedBy;
		if (bRequestAlternateLoc !is null)
			*cast(bool*)&params[4] = *bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
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
	void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass pDamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float* DamageFalloffExponent = null)
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
		if (DamageFalloffExponent !is null)
			*cast(float*)&params[36] = *DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverRadiusDamage, params.ptr, cast(void*)0);
	}
	void PlayerChangedTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerChangedTeam, cast(void*)0, cast(void*)0);
	}
	void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBaseEyeheight, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool CheatWalk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheatWalk, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatGhost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheatGhost, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatFly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheatFly, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void Destroyed_HandleDriver()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed_HandleDriver, cast(void*)0, cast(void*)0);
	}
	bool CanEnterVehicle(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanEnterVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnySeatAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	void EntryAnnouncement(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.EntryAnnouncement, params.ptr, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachDriver, params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
	bool ContinueOnFoot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ContinueOnFoot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetExitRotation(Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetExitRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInputs, params.ptr, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeft, cast(void*)0, cast(void*)0);
	}
	bool PlaceExitingDriver(Pawn* ExitingDriver = null)
	{
		ubyte params[8];
		params[] = 0;
		if (ExitingDriver !is null)
			*cast(Pawn*)params.ptr = *ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaceExitingDriver, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FindAutoExit(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindAutoExit, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryExitPos(Pawn ExitingDriver, Vector ExitPos, bool bMustFindGround)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		*cast(Vector*)&params[4] = ExitPos;
		*cast(bool*)&params[16] = bMustFindGround;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryExitPos, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void UnPossessed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnPossessed, cast(void*)0, cast(void*)0);
	}
	Controller SetKillInstigator(Controller InstigatedBy, ScriptClass pDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(ScriptClass*)&params[4] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetKillInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
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
	void AdjustDriverDamage(ref int Damage, Controller InstigatedBy, Vector HitLocation, ref Vector Momentum, ScriptClass pDamageType)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDriverDamage, params.ptr, cast(void*)0);
		Damage = *cast(int*)params.ptr;
		Momentum = *cast(Vector*)&params[20];
	}
	void ThrowActiveWeapon(bool* bDestroyWeap = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bDestroyWeap !is null)
			*cast(bool*)params.ptr = *bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowActiveWeapon, params.ptr, cast(void*)0);
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.Died, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void DriverDied(ScriptClass pDamageType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverDied, params.ptr, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDying, params.ptr, cast(void*)0);
	}
	ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDefaultCameraMode, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceRotation, params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
	}
	Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionDamageInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachingOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PancakeOther, params.ptr, cast(void*)0);
	}
	void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.CrushedBy, params.ptr, cast(void*)0);
	}
	Vector GetEntryLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEntryLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetDriving(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDriving, params.ptr, cast(void*)0);
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrivingStatusChanged, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyDriverTakeHit, params.ptr, cast(void*)0);
	}
	void ZeroMovementVariables()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ZeroMovementVariables, cast(void*)0, cast(void*)0);
	}
}

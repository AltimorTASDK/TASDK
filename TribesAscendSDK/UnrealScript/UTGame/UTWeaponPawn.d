module UnrealScript.UTGame.UTWeaponPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.UDKBase.UDKWeaponPawn;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTWeaponPawn : UDKWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTWeaponPawn")); }
	private static __gshared UTWeaponPawn mDefaultProperties;
	@property final static UTWeaponPawn DefaultProperties() { mixin(MGDPC("UTWeaponPawn", "UTWeaponPawn UTGame.Default__UTWeaponPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetVehicleDrivingStatName;
			ScriptFunction mDisplayDebug;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mCalcCamera;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mSetFiringMode;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mClearFlashCount;
			ScriptFunction mSetFlashLocation;
			ScriptFunction mClearFlashLocation;
			ScriptFunction mPossessedBy;
			ScriptFunction mDriverLeft;
			ScriptFunction mServerAdjacentSeat;
			ScriptFunction mServerChangeSeat;
			ScriptFunction mAdjustCameraScale;
			ScriptFunction mPlaceExitingDriver;
			ScriptFunction mDropToGround;
			ScriptFunction mAddVelocity;
			ScriptFunction mJumpOffPawn;
			ScriptFunction mBaseChange;
			ScriptFunction mSetMovementPhysics;
			ScriptFunction mDoJump;
			ScriptFunction mGetCollisionRadius;
			ScriptFunction mSetBaseEyeheight;
			ScriptFunction mAttachDriver;
			ScriptFunction mHoldGameObject;
			ScriptFunction mFaceRotation;
			ScriptFunction mDriverLeave;
			ScriptFunction mDied;
			ScriptFunction mTooCloseToAttack;
			ScriptFunction mDisplayHud;
			ScriptFunction mApplyWeaponEffects;
		}
		public @property static final
		{
			ScriptFunction GetVehicleDrivingStatName() { mixin(MGF("mGetVehicleDrivingStatName", "Function UTGame.UTWeaponPawn.GetVehicleDrivingStatName")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function UTGame.UTWeaponPawn.DisplayDebug")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTWeaponPawn.ReplicatedEvent")); }
			ScriptFunction CalcCamera() { mixin(MGF("mCalcCamera", "Function UTGame.UTWeaponPawn.CalcCamera")); }
			ScriptFunction ProcessViewRotation() { mixin(MGF("mProcessViewRotation", "Function UTGame.UTWeaponPawn.ProcessViewRotation")); }
			ScriptFunction SetFiringMode() { mixin(MGF("mSetFiringMode", "Function UTGame.UTWeaponPawn.SetFiringMode")); }
			ScriptFunction IncrementFlashCount() { mixin(MGF("mIncrementFlashCount", "Function UTGame.UTWeaponPawn.IncrementFlashCount")); }
			ScriptFunction ClearFlashCount() { mixin(MGF("mClearFlashCount", "Function UTGame.UTWeaponPawn.ClearFlashCount")); }
			ScriptFunction SetFlashLocation() { mixin(MGF("mSetFlashLocation", "Function UTGame.UTWeaponPawn.SetFlashLocation")); }
			ScriptFunction ClearFlashLocation() { mixin(MGF("mClearFlashLocation", "Function UTGame.UTWeaponPawn.ClearFlashLocation")); }
			ScriptFunction PossessedBy() { mixin(MGF("mPossessedBy", "Function UTGame.UTWeaponPawn.PossessedBy")); }
			ScriptFunction DriverLeft() { mixin(MGF("mDriverLeft", "Function UTGame.UTWeaponPawn.DriverLeft")); }
			ScriptFunction ServerAdjacentSeat() { mixin(MGF("mServerAdjacentSeat", "Function UTGame.UTWeaponPawn.ServerAdjacentSeat")); }
			ScriptFunction ServerChangeSeat() { mixin(MGF("mServerChangeSeat", "Function UTGame.UTWeaponPawn.ServerChangeSeat")); }
			ScriptFunction AdjustCameraScale() { mixin(MGF("mAdjustCameraScale", "Function UTGame.UTWeaponPawn.AdjustCameraScale")); }
			ScriptFunction PlaceExitingDriver() { mixin(MGF("mPlaceExitingDriver", "Function UTGame.UTWeaponPawn.PlaceExitingDriver")); }
			ScriptFunction DropToGround() { mixin(MGF("mDropToGround", "Function UTGame.UTWeaponPawn.DropToGround")); }
			ScriptFunction AddVelocity() { mixin(MGF("mAddVelocity", "Function UTGame.UTWeaponPawn.AddVelocity")); }
			ScriptFunction JumpOffPawn() { mixin(MGF("mJumpOffPawn", "Function UTGame.UTWeaponPawn.JumpOffPawn")); }
			ScriptFunction BaseChange() { mixin(MGF("mBaseChange", "Function UTGame.UTWeaponPawn.BaseChange")); }
			ScriptFunction SetMovementPhysics() { mixin(MGF("mSetMovementPhysics", "Function UTGame.UTWeaponPawn.SetMovementPhysics")); }
			ScriptFunction DoJump() { mixin(MGF("mDoJump", "Function UTGame.UTWeaponPawn.DoJump")); }
			ScriptFunction GetCollisionRadius() { mixin(MGF("mGetCollisionRadius", "Function UTGame.UTWeaponPawn.GetCollisionRadius")); }
			ScriptFunction SetBaseEyeheight() { mixin(MGF("mSetBaseEyeheight", "Function UTGame.UTWeaponPawn.SetBaseEyeheight")); }
			ScriptFunction AttachDriver() { mixin(MGF("mAttachDriver", "Function UTGame.UTWeaponPawn.AttachDriver")); }
			ScriptFunction HoldGameObject() { mixin(MGF("mHoldGameObject", "Function UTGame.UTWeaponPawn.HoldGameObject")); }
			ScriptFunction FaceRotation() { mixin(MGF("mFaceRotation", "Function UTGame.UTWeaponPawn.FaceRotation")); }
			ScriptFunction DriverLeave() { mixin(MGF("mDriverLeave", "Function UTGame.UTWeaponPawn.DriverLeave")); }
			ScriptFunction Died() { mixin(MGF("mDied", "Function UTGame.UTWeaponPawn.Died")); }
			ScriptFunction TooCloseToAttack() { mixin(MGF("mTooCloseToAttack", "Function UTGame.UTWeaponPawn.TooCloseToAttack")); }
			ScriptFunction DisplayHud() { mixin(MGF("mDisplayHud", "Function UTGame.UTWeaponPawn.DisplayHud")); }
			ScriptFunction ApplyWeaponEffects() { mixin(MGF("mApplyWeaponEffects", "Function UTGame.UTWeaponPawn.ApplyWeaponEffects")); }
		}
	}
final:
	ScriptName GetVehicleDrivingStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVehicleDrivingStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
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
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = out_ViewRotation;
		*cast(Rotator*)&params[16] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		out_ViewRotation = *cast(Rotator*)&params[4];
		out_DeltaRot = *cast(Rotator*)&params[16];
	}
	void SetFiringMode(Weapon Weap, ubyte FiringModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Weap;
		params[4] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFiringMode, params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon Who, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, params.ptr, cast(void*)0);
	}
	void ClearFlashCount(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashCount, params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Weapon Who, ubyte FireModeNum, Vector NewLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashLocation, params.ptr, cast(void*)0);
	}
	void ClearFlashLocation(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashLocation, params.ptr, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeft, cast(void*)0, cast(void*)0);
	}
	void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdjacentSeat, params.ptr, cast(void*)0);
	}
	void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeSeat, params.ptr, cast(void*)0);
	}
	void AdjustCameraScale(bool bIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustCameraScale, params.ptr, cast(void*)0);
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
	void DropToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DropToGround, cast(void*)0, cast(void*)0);
	}
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[28] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVelocity, params.ptr, cast(void*)0);
	}
	void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.JumpOffPawn, cast(void*)0, cast(void*)0);
	}
	void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BaseChange, cast(void*)0, cast(void*)0);
	}
	void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovementPhysics, cast(void*)0, cast(void*)0);
	}
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoJump, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBaseEyeheight, cast(void*)0, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachDriver, params.ptr, cast(void*)0);
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceRotation, params.ptr, cast(void*)0);
	}
	bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeave, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.TooCloseToAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DisplayHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D HudPOS, int* SIndex = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = HudPOS;
		if (SIndex !is null)
			*cast(int*)&params[16] = *SIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHud, params.ptr, cast(void*)0);
	}
	void ApplyWeaponEffects(int OverlayFlags, int* SeatIndex = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		if (SeatIndex !is null)
			*cast(int*)&params[4] = *SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyWeaponEffects, params.ptr, cast(void*)0);
	}
}

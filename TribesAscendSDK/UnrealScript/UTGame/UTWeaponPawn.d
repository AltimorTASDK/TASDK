module UnrealScript.UTGame.UTWeaponPawn;

import ScriptClasses;
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
	final ScriptName GetVehicleDrivingStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43961], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43964], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43969], params.ptr, cast(void*)0);
	}
	final bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43971], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43978], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	final void SetFiringMode(Weapon Weap, ubyte FiringModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Weap;
		params[4] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43985], params.ptr, cast(void*)0);
	}
	final void IncrementFlashCount(Weapon Who, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43988], params.ptr, cast(void*)0);
	}
	final void ClearFlashCount(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43991], params.ptr, cast(void*)0);
	}
	final void SetFlashLocation(Weapon Who, ubyte FireModeNum, Vector NewLoc)
	{
		ubyte params[17];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43993], params.ptr, cast(void*)0);
	}
	final void ClearFlashLocation(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43997], params.ptr, cast(void*)0);
	}
	final void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43999], params.ptr, cast(void*)0);
	}
	final void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44002], cast(void*)0, cast(void*)0);
	}
	final void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44004], params.ptr, cast(void*)0);
	}
	final void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44007], params.ptr, cast(void*)0);
	}
	final void AdjustCameraScale(bool bIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44009], params.ptr, cast(void*)0);
	}
	final bool PlaceExitingDriver(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44011], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DropToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44014], cast(void*)0, cast(void*)0);
	}
	final void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44015], params.ptr, cast(void*)0);
	}
	final void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44020], cast(void*)0, cast(void*)0);
	}
	final void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44021], cast(void*)0, cast(void*)0);
	}
	final void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44022], cast(void*)0, cast(void*)0);
	}
	final bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44023], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float GetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44026], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44028], cast(void*)0, cast(void*)0);
	}
	final void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44029], params.ptr, cast(void*)0);
	}
	final void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44032], params.ptr, cast(void*)0);
	}
	final void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44034], params.ptr, cast(void*)0);
	}
	final bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44037], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool Died(Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44041], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44047], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DisplayHud(UTHUD HUD, Canvas pCanvas, UObject.Vector2D HudPOS, int SIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTHUD*)params.ptr = HUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = HudPOS;
		*cast(int*)&params[16] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44051], params.ptr, cast(void*)0);
	}
	final void ApplyWeaponEffects(int OverlayFlags, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44056], params.ptr, cast(void*)0);
	}
}

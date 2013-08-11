module UnrealScript.TribesGame.TrConsolePlayerInput;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerInput;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Actor;

extern(C++) interface TrConsolePlayerInput : TrPlayerInput
{
	public @property final auto ref float HoverBoardPitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref float AutoPitchStopAdjustingValue() { return *cast(float*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref float AutoPitchCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref float ViewAccel_BackToCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref float ViewAccel_BackToCenterBoundary() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref float ViewAccel_LookingUpOrDownBoundary() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref float ViewAccel_PitchThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref float ViewAccel_MaxTurnSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref float ViewAccel_RampSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref float MagicScaleForSensitivityEdge() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float MagicScaleForSensitivityMiddle() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float RightThumbStickDeadZoneThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float LeftThumbStickDeadZoneThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref Rotator LastDeltaRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref Vector LastCamLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float LastAdjustZ() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float LastAdjustY() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref float LastDistFromAimZa() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float LastDistFromAimYa() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float LastTargetHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float LastTargetRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float LastAdhesionAmtZ() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float LastAdhesionAmtY() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref float LastFrictionMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref float LastDistFromAimY() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref float LastDistFromAimZ() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float LastDistMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref float LastDistToTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float LastFrictionTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref Pawn LastFrictionTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float Dodge_Threshold() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float ViewAccel_Twitchy() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float ViewAccel_TimeHeld() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float ViewAccel_TimeToHoldBeforeFastAcceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float ViewAccel_CurrMutliplier() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float ViewAccel_BaseMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float ViewAccel_DiagonalThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float ViewAccel_YawThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref float SlowTurnScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float AutoVehicleCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref float AutoCenterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref float LastTurnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 468); }
	public @property final bool bIsLookingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x100) != 0; }
	public @property final bool bIsLookingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x100; } return val; }
	public @property final bool bIsLookingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x80) != 0; }
	public @property final bool bIsLookingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x80; } return val; }
	public @property final bool bAppliedTargetFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x40) != 0; }
	public @property final bool bAppliedTargetFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x40; } return val; }
	public @property final bool bDebugTargetFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x20) != 0; }
	public @property final bool bDebugTargetFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x20; } return val; }
	public @property final bool bTargetFrictionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x10) != 0; }
	public @property final bool bTargetFrictionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x10; } return val; }
	public @property final bool bDebugViewAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x8) != 0; }
	public @property final bool bDebugViewAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x8; } return val; }
	public @property final bool bViewAccelerationEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x4) != 0; }
	public @property final bool bViewAccelerationEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x4; } return val; }
	public @property final bool bAutoCenterVehiclePitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x2) != 0; }
	public @property final bool bAutoCenterVehiclePitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x2; } return val; }
	public @property final bool bAutoCenterPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x1) != 0; }
	public @property final bool bAutoCenterPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x1; } return val; }
	public @property final auto ref float TurningAccelerationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref float SensitivityMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 456); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78083], cast(void*)0, cast(void*)0);
	}
	final void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78084], params.ptr, cast(void*)0);
	}
	final void ApplyViewAutoPitchCentering(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78088], params.ptr, cast(void*)0);
	}
	final void ApplyViewAutoVehiclePitchCentering(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78092], params.ptr, cast(void*)0);
	}
	final void ApplyViewAcceleration(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78100], params.ptr, cast(void*)0);
	}
	final void ApplyTargetAdhesion(float DeltaTime, UTWeapon W, int* out_YawRot, int* out_PitchRot)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UTWeapon*)&params[4] = W;
		*cast(int*)&params[8] = *out_YawRot;
		*cast(int*)&params[12] = *out_PitchRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78104], params.ptr, cast(void*)0);
		*out_YawRot = *cast(int*)&params[8];
		*out_PitchRot = *cast(int*)&params[12];
	}
	final void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78132], params.ptr, cast(void*)0);
	}
	final void ApplyTargetFriction(float DeltaTime, UTWeapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UTWeapon*)&params[4] = W;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78134], params.ptr, cast(void*)0);
	}
	final Actor.EDoubleClickDir CheckForDoubleClickMove(float DeltaTime)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78154], params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[4];
	}
}

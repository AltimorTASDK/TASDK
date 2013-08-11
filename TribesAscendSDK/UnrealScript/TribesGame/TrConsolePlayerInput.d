module UnrealScript.TribesGame.TrConsolePlayerInput;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerInput;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Actor;

extern(C++) interface TrConsolePlayerInput : TrPlayerInput
{
public extern(D):
	@property final
	{
		auto ref
		{
			float HoverBoardPitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
			float AutoPitchStopAdjustingValue() { return *cast(float*)(cast(size_t)cast(void*)this + 644); }
			float AutoPitchCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 640); }
			float ViewAccel_BackToCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float ViewAccel_BackToCenterBoundary() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float ViewAccel_LookingUpOrDownBoundary() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			float ViewAccel_PitchThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			float ViewAccel_MaxTurnSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
			float ViewAccel_RampSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
			float MagicScaleForSensitivityEdge() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
			float MagicScaleForSensitivityMiddle() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float RightThumbStickDeadZoneThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float LeftThumbStickDeadZoneThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			Rotator LastDeltaRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 588); }
			Vector LastCamLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 576); }
			float LastAdjustZ() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float LastAdjustY() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float LastDistFromAimZa() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			float LastDistFromAimYa() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float LastTargetHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float LastTargetRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float LastAdhesionAmtZ() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float LastAdhesionAmtY() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			float LastFrictionMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			float LastDistFromAimY() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			float LastDistFromAimZ() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
			float LastDistMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float LastDistToTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float LastFrictionTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			Pawn LastFrictionTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 516); }
			float Dodge_Threshold() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float ViewAccel_Twitchy() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float ViewAccel_TimeHeld() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float ViewAccel_TimeToHoldBeforeFastAcceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float ViewAccel_CurrMutliplier() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float ViewAccel_BaseMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float ViewAccel_DiagonalThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float ViewAccel_YawThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			float SlowTurnScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float AutoVehicleCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
			float AutoCenterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
			float LastTurnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 468); }
			float TurningAccelerationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 460); }
			float SensitivityMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 456); }
		}
		bool bIsLookingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x100) != 0; }
		bool bIsLookingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x100; } return val; }
		bool bIsLookingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x80) != 0; }
		bool bIsLookingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x80; } return val; }
		bool bAppliedTargetFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x40) != 0; }
		bool bAppliedTargetFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x40; } return val; }
		bool bDebugTargetFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x20) != 0; }
		bool bDebugTargetFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x20; } return val; }
		bool bTargetFrictionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x10) != 0; }
		bool bTargetFrictionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x10; } return val; }
		bool bDebugViewAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x8) != 0; }
		bool bDebugViewAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x8; } return val; }
		bool bViewAccelerationEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x4) != 0; }
		bool bViewAccelerationEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x4; } return val; }
		bool bAutoCenterVehiclePitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x2) != 0; }
		bool bAutoCenterVehiclePitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x2; } return val; }
		bool bAutoCenterPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 464) & 0x1) != 0; }
		bool bAutoCenterPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 464) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 464) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78083], cast(void*)0, cast(void*)0);
	}
	void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78084], params.ptr, cast(void*)0);
	}
	void ApplyViewAutoPitchCentering(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78088], params.ptr, cast(void*)0);
	}
	void ApplyViewAutoVehiclePitchCentering(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78092], params.ptr, cast(void*)0);
	}
	void ApplyViewAcceleration(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78100], params.ptr, cast(void*)0);
	}
	void ApplyTargetAdhesion(float DeltaTime, UTWeapon W, int* out_YawRot, int* out_PitchRot)
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
	void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78132], params.ptr, cast(void*)0);
	}
	void ApplyTargetFriction(float DeltaTime, UTWeapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UTWeapon*)&params[4] = W;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78134], params.ptr, cast(void*)0);
	}
	Actor.EDoubleClickDir CheckForDoubleClickMove(float DeltaTime)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78154], params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[4];
	}
}

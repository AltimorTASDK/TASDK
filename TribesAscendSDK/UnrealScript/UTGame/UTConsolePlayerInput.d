module UnrealScript.UTGame.UTConsolePlayerInput;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTPlayerInput;
import UnrealScript.Engine.Actor;

extern(C++) interface UTConsolePlayerInput : UTPlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTConsolePlayerInput")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPreProcessInput;
			ScriptFunction mApplyViewAutoPitchCentering;
			ScriptFunction mApplyViewAutoVehiclePitchCentering;
			ScriptFunction mApplyViewAcceleration;
			ScriptFunction mApplyTargetAdhesion;
			ScriptFunction mAdjustMouseSensitivity;
			ScriptFunction mApplyTargetFriction;
			ScriptFunction mCheckForDoubleClickMove;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.PostBeginPlay")); }
			ScriptFunction PreProcessInput() { return mPreProcessInput ? mPreProcessInput : (mPreProcessInput = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.PreProcessInput")); }
			ScriptFunction ApplyViewAutoPitchCentering() { return mApplyViewAutoPitchCentering ? mApplyViewAutoPitchCentering : (mApplyViewAutoPitchCentering = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.ApplyViewAutoPitchCentering")); }
			ScriptFunction ApplyViewAutoVehiclePitchCentering() { return mApplyViewAutoVehiclePitchCentering ? mApplyViewAutoVehiclePitchCentering : (mApplyViewAutoVehiclePitchCentering = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.ApplyViewAutoVehiclePitchCentering")); }
			ScriptFunction ApplyViewAcceleration() { return mApplyViewAcceleration ? mApplyViewAcceleration : (mApplyViewAcceleration = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.ApplyViewAcceleration")); }
			ScriptFunction ApplyTargetAdhesion() { return mApplyTargetAdhesion ? mApplyTargetAdhesion : (mApplyTargetAdhesion = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.ApplyTargetAdhesion")); }
			ScriptFunction AdjustMouseSensitivity() { return mAdjustMouseSensitivity ? mAdjustMouseSensitivity : (mAdjustMouseSensitivity = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.AdjustMouseSensitivity")); }
			ScriptFunction ApplyTargetFriction() { return mApplyTargetFriction ? mApplyTargetFriction : (mApplyTargetFriction = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.ApplyTargetFriction")); }
			ScriptFunction CheckForDoubleClickMove() { return mCheckForDoubleClickMove ? mCheckForDoubleClickMove : (mCheckForDoubleClickMove = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerInput.CheckForDoubleClickMove")); }
		}
	}
	@property final
	{
		auto ref
		{
			float HoverBoardPitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
			float AutoPitchStopAdjustingValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
			float AutoPitchCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1184); }
			float ViewAccel_BackToCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
			float ViewAccel_BackToCenterBoundary() { return *cast(float*)(cast(size_t)cast(void*)this + 1176); }
			float ViewAccel_LookingUpOrDownBoundary() { return *cast(float*)(cast(size_t)cast(void*)this + 1172); }
			float ViewAccel_PitchThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
			float ViewAccel_MaxTurnSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1164); }
			float ViewAccel_RampSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1160); }
			float MagicScaleForSensitivityEdge() { return *cast(float*)(cast(size_t)cast(void*)this + 1156); }
			float MagicScaleForSensitivityMiddle() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
			float RightThumbStickDeadZoneThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1148); }
			float LeftThumbStickDeadZoneThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1144); }
			Rotator LastDeltaRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1132); }
			Vector LastCamLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1120); }
			float LastAdjustZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1116); }
			float LastAdjustY() { return *cast(float*)(cast(size_t)cast(void*)this + 1112); }
			float LastDistFromAimZa() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
			float LastDistFromAimYa() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
			float LastTargetHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1100); }
			float LastTargetRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
			float LastAdhesionAmtZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
			float LastAdhesionAmtY() { return *cast(float*)(cast(size_t)cast(void*)this + 1088); }
			float LastFrictionMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1084); }
			float LastDistFromAimY() { return *cast(float*)(cast(size_t)cast(void*)this + 1080); }
			float LastDistFromAimZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1076); }
			float LastDistMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1072); }
			float LastDistToTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 1068); }
			float LastFrictionTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1064); }
			Pawn LastFrictionTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1060); }
			float Dodge_Threshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
			float ViewAccel_Twitchy() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
			float ViewAccel_TimeHeld() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
			float ViewAccel_TimeToHoldBeforeFastAcceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
			float ViewAccel_CurrMutliplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
			float ViewAccel_BaseMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1036); }
			float ViewAccel_DiagonalThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1032); }
			float ViewAccel_YawThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1028); }
			float SlowTurnScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1024); }
			float AutoVehicleCenterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1020); }
			float AutoCenterDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 1016); }
			float LastTurnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1012); }
			float TurningAccelerationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1004); }
			float SensitivityMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1000); }
		}
		bool bIsLookingDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x100) != 0; }
		bool bIsLookingDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x100; } return val; }
		bool bIsLookingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x80) != 0; }
		bool bIsLookingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x80; } return val; }
		bool bAppliedTargetFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x40) != 0; }
		bool bAppliedTargetFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x40; } return val; }
		bool bDebugTargetFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x20) != 0; }
		bool bDebugTargetFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x20; } return val; }
		bool bTargetFrictionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x10) != 0; }
		bool bTargetFrictionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x10; } return val; }
		bool bDebugViewAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x8) != 0; }
		bool bDebugViewAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x8; } return val; }
		bool bViewAccelerationEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x4) != 0; }
		bool bViewAccelerationEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x4; } return val; }
		bool bAutoCenterVehiclePitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x2) != 0; }
		bool bAutoCenterVehiclePitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x2; } return val; }
		bool bAutoCenterPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1008) & 0x1) != 0; }
		bool bAutoCenterPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1008) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1008) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreProcessInput, params.ptr, cast(void*)0);
	}
	void ApplyViewAutoPitchCentering(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyViewAutoPitchCentering, params.ptr, cast(void*)0);
	}
	void ApplyViewAutoVehiclePitchCentering(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyViewAutoVehiclePitchCentering, params.ptr, cast(void*)0);
	}
	void ApplyViewAcceleration(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyViewAcceleration, params.ptr, cast(void*)0);
	}
	void ApplyTargetAdhesion(float DeltaTime, UTWeapon W, int* out_YawRot, int* out_PitchRot)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UTWeapon*)&params[4] = W;
		*cast(int*)&params[8] = *out_YawRot;
		*cast(int*)&params[12] = *out_PitchRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyTargetAdhesion, params.ptr, cast(void*)0);
		*out_YawRot = *cast(int*)&params[8];
		*out_PitchRot = *cast(int*)&params[12];
	}
	void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustMouseSensitivity, params.ptr, cast(void*)0);
	}
	void ApplyTargetFriction(float DeltaTime, UTWeapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UTWeapon*)&params[4] = W;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyTargetFriction, params.ptr, cast(void*)0);
	}
	Actor.EDoubleClickDir CheckForDoubleClickMove(float DeltaTime)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForDoubleClickMove, params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[4];
	}
}

module UnrealScript.UTGame.UTConsolePlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTPlayerInput;
import UnrealScript.Engine.Actor;

extern(C++) interface UTConsolePlayerInput : UTPlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTConsolePlayerInput")()); }
	private static __gshared UTConsolePlayerInput mDefaultProperties;
	@property final static UTConsolePlayerInput DefaultProperties() { mixin(MGDPC!(UTConsolePlayerInput, "UTConsolePlayerInput UTGame.Default__UTConsolePlayerInput")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTConsolePlayerInput.PostBeginPlay")()); }
			ScriptFunction PreProcessInput() { mixin(MGF!("mPreProcessInput", "Function UTGame.UTConsolePlayerInput.PreProcessInput")()); }
			ScriptFunction ApplyViewAutoPitchCentering() { mixin(MGF!("mApplyViewAutoPitchCentering", "Function UTGame.UTConsolePlayerInput.ApplyViewAutoPitchCentering")()); }
			ScriptFunction ApplyViewAutoVehiclePitchCentering() { mixin(MGF!("mApplyViewAutoVehiclePitchCentering", "Function UTGame.UTConsolePlayerInput.ApplyViewAutoVehiclePitchCentering")()); }
			ScriptFunction ApplyViewAcceleration() { mixin(MGF!("mApplyViewAcceleration", "Function UTGame.UTConsolePlayerInput.ApplyViewAcceleration")()); }
			ScriptFunction ApplyTargetAdhesion() { mixin(MGF!("mApplyTargetAdhesion", "Function UTGame.UTConsolePlayerInput.ApplyTargetAdhesion")()); }
			ScriptFunction AdjustMouseSensitivity() { mixin(MGF!("mAdjustMouseSensitivity", "Function UTGame.UTConsolePlayerInput.AdjustMouseSensitivity")()); }
			ScriptFunction ApplyTargetFriction() { mixin(MGF!("mApplyTargetFriction", "Function UTGame.UTConsolePlayerInput.ApplyTargetFriction")()); }
			ScriptFunction CheckForDoubleClickMove() { mixin(MGF!("mCheckForDoubleClickMove", "Function UTGame.UTConsolePlayerInput.CheckForDoubleClickMove")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float HoverBoardPitchMultiplier() { mixin(MGPC!(float, 1192)()); }
			float AutoPitchStopAdjustingValue() { mixin(MGPC!(float, 1188)()); }
			float AutoPitchCenterSpeed() { mixin(MGPC!(float, 1184)()); }
			float ViewAccel_BackToCenterSpeed() { mixin(MGPC!(float, 1180)()); }
			float ViewAccel_BackToCenterBoundary() { mixin(MGPC!(float, 1176)()); }
			float ViewAccel_LookingUpOrDownBoundary() { mixin(MGPC!(float, 1172)()); }
			float ViewAccel_PitchThreshold() { mixin(MGPC!(float, 1168)()); }
			float ViewAccel_MaxTurnSpeed() { mixin(MGPC!(float, 1164)()); }
			float ViewAccel_RampSpeed() { mixin(MGPC!(float, 1160)()); }
			float MagicScaleForSensitivityEdge() { mixin(MGPC!(float, 1156)()); }
			float MagicScaleForSensitivityMiddle() { mixin(MGPC!(float, 1152)()); }
			float RightThumbStickDeadZoneThreshold() { mixin(MGPC!(float, 1148)()); }
			float LeftThumbStickDeadZoneThreshold() { mixin(MGPC!(float, 1144)()); }
			Rotator LastDeltaRot() { mixin(MGPC!(Rotator, 1132)()); }
			Vector LastCamLoc() { mixin(MGPC!(Vector, 1120)()); }
			float LastAdjustZ() { mixin(MGPC!(float, 1116)()); }
			float LastAdjustY() { mixin(MGPC!(float, 1112)()); }
			float LastDistFromAimZa() { mixin(MGPC!(float, 1108)()); }
			float LastDistFromAimYa() { mixin(MGPC!(float, 1104)()); }
			float LastTargetHeight() { mixin(MGPC!(float, 1100)()); }
			float LastTargetRadius() { mixin(MGPC!(float, 1096)()); }
			float LastAdhesionAmtZ() { mixin(MGPC!(float, 1092)()); }
			float LastAdhesionAmtY() { mixin(MGPC!(float, 1088)()); }
			float LastFrictionMultiplier() { mixin(MGPC!(float, 1084)()); }
			float LastDistFromAimY() { mixin(MGPC!(float, 1080)()); }
			float LastDistFromAimZ() { mixin(MGPC!(float, 1076)()); }
			float LastDistMultiplier() { mixin(MGPC!(float, 1072)()); }
			float LastDistToTarget() { mixin(MGPC!(float, 1068)()); }
			float LastFrictionTargetTime() { mixin(MGPC!(float, 1064)()); }
			Pawn LastFrictionTarget() { mixin(MGPC!(Pawn, 1060)()); }
			float Dodge_Threshold() { mixin(MGPC!(float, 1056)()); }
			float ViewAccel_Twitchy() { mixin(MGPC!(float, 1052)()); }
			float ViewAccel_TimeHeld() { mixin(MGPC!(float, 1048)()); }
			float ViewAccel_TimeToHoldBeforeFastAcceleration() { mixin(MGPC!(float, 1044)()); }
			float ViewAccel_CurrMutliplier() { mixin(MGPC!(float, 1040)()); }
			float ViewAccel_BaseMultiplier() { mixin(MGPC!(float, 1036)()); }
			float ViewAccel_DiagonalThreshold() { mixin(MGPC!(float, 1032)()); }
			float ViewAccel_YawThreshold() { mixin(MGPC!(float, 1028)()); }
			float SlowTurnScaling() { mixin(MGPC!(float, 1024)()); }
			float AutoVehicleCenterSpeed() { mixin(MGPC!(float, 1020)()); }
			float AutoCenterDelay() { mixin(MGPC!(float, 1016)()); }
			float LastTurnTime() { mixin(MGPC!(float, 1012)()); }
			float TurningAccelerationMultiplier() { mixin(MGPC!(float, 1004)()); }
			float SensitivityMultiplier() { mixin(MGPC!(float, 1000)()); }
		}
		bool bIsLookingDown() { mixin(MGBPC!(1008, 0x100)()); }
		bool bIsLookingDown(bool val) { mixin(MSBPC!(1008, 0x100)()); }
		bool bIsLookingUp() { mixin(MGBPC!(1008, 0x80)()); }
		bool bIsLookingUp(bool val) { mixin(MSBPC!(1008, 0x80)()); }
		bool bAppliedTargetFriction() { mixin(MGBPC!(1008, 0x40)()); }
		bool bAppliedTargetFriction(bool val) { mixin(MSBPC!(1008, 0x40)()); }
		bool bDebugTargetFriction() { mixin(MGBPC!(1008, 0x20)()); }
		bool bDebugTargetFriction(bool val) { mixin(MSBPC!(1008, 0x20)()); }
		bool bTargetFrictionEnabled() { mixin(MGBPC!(1008, 0x10)()); }
		bool bTargetFrictionEnabled(bool val) { mixin(MSBPC!(1008, 0x10)()); }
		bool bDebugViewAcceleration() { mixin(MGBPC!(1008, 0x8)()); }
		bool bDebugViewAcceleration(bool val) { mixin(MSBPC!(1008, 0x8)()); }
		bool bViewAccelerationEnabled() { mixin(MGBPC!(1008, 0x4)()); }
		bool bViewAccelerationEnabled(bool val) { mixin(MSBPC!(1008, 0x4)()); }
		bool bAutoCenterVehiclePitch() { mixin(MGBPC!(1008, 0x2)()); }
		bool bAutoCenterVehiclePitch(bool val) { mixin(MSBPC!(1008, 0x2)()); }
		bool bAutoCenterPitch() { mixin(MGBPC!(1008, 0x1)()); }
		bool bAutoCenterPitch(bool val) { mixin(MSBPC!(1008, 0x1)()); }
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
	void ApplyTargetAdhesion(float DeltaTime, UTWeapon W, ref int out_YawRot, ref int out_PitchRot)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UTWeapon*)&params[4] = W;
		*cast(int*)&params[8] = out_YawRot;
		*cast(int*)&params[12] = out_PitchRot;
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

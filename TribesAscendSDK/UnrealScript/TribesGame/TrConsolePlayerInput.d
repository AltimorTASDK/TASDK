module UnrealScript.TribesGame.TrConsolePlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerInput;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Actor;

extern(C++) interface TrConsolePlayerInput : TrPlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrConsolePlayerInput")()); }
	private static __gshared TrConsolePlayerInput mDefaultProperties;
	@property final static TrConsolePlayerInput DefaultProperties() { mixin(MGDPC!(TrConsolePlayerInput, "TrConsolePlayerInput TribesGame.Default__TrConsolePlayerInput")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrConsolePlayerInput.PostBeginPlay")()); }
			ScriptFunction PreProcessInput() { mixin(MGF!("mPreProcessInput", "Function TribesGame.TrConsolePlayerInput.PreProcessInput")()); }
			ScriptFunction ApplyViewAutoPitchCentering() { mixin(MGF!("mApplyViewAutoPitchCentering", "Function TribesGame.TrConsolePlayerInput.ApplyViewAutoPitchCentering")()); }
			ScriptFunction ApplyViewAutoVehiclePitchCentering() { mixin(MGF!("mApplyViewAutoVehiclePitchCentering", "Function TribesGame.TrConsolePlayerInput.ApplyViewAutoVehiclePitchCentering")()); }
			ScriptFunction ApplyViewAcceleration() { mixin(MGF!("mApplyViewAcceleration", "Function TribesGame.TrConsolePlayerInput.ApplyViewAcceleration")()); }
			ScriptFunction ApplyTargetAdhesion() { mixin(MGF!("mApplyTargetAdhesion", "Function TribesGame.TrConsolePlayerInput.ApplyTargetAdhesion")()); }
			ScriptFunction AdjustMouseSensitivity() { mixin(MGF!("mAdjustMouseSensitivity", "Function TribesGame.TrConsolePlayerInput.AdjustMouseSensitivity")()); }
			ScriptFunction ApplyTargetFriction() { mixin(MGF!("mApplyTargetFriction", "Function TribesGame.TrConsolePlayerInput.ApplyTargetFriction")()); }
			ScriptFunction CheckForDoubleClickMove() { mixin(MGF!("mCheckForDoubleClickMove", "Function TribesGame.TrConsolePlayerInput.CheckForDoubleClickMove")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float HoverBoardPitchMultiplier() { mixin(MGPC!(float, 648)()); }
			float AutoPitchStopAdjustingValue() { mixin(MGPC!(float, 644)()); }
			float AutoPitchCenterSpeed() { mixin(MGPC!(float, 640)()); }
			float ViewAccel_BackToCenterSpeed() { mixin(MGPC!(float, 636)()); }
			float ViewAccel_BackToCenterBoundary() { mixin(MGPC!(float, 632)()); }
			float ViewAccel_LookingUpOrDownBoundary() { mixin(MGPC!(float, 628)()); }
			float ViewAccel_PitchThreshold() { mixin(MGPC!(float, 624)()); }
			float ViewAccel_MaxTurnSpeed() { mixin(MGPC!(float, 620)()); }
			float ViewAccel_RampSpeed() { mixin(MGPC!(float, 616)()); }
			float MagicScaleForSensitivityEdge() { mixin(MGPC!(float, 612)()); }
			float MagicScaleForSensitivityMiddle() { mixin(MGPC!(float, 608)()); }
			float RightThumbStickDeadZoneThreshold() { mixin(MGPC!(float, 604)()); }
			float LeftThumbStickDeadZoneThreshold() { mixin(MGPC!(float, 600)()); }
			Rotator LastDeltaRot() { mixin(MGPC!(Rotator, 588)()); }
			Vector LastCamLoc() { mixin(MGPC!(Vector, 576)()); }
			float LastAdjustZ() { mixin(MGPC!(float, 572)()); }
			float LastAdjustY() { mixin(MGPC!(float, 568)()); }
			float LastDistFromAimZa() { mixin(MGPC!(float, 564)()); }
			float LastDistFromAimYa() { mixin(MGPC!(float, 560)()); }
			float LastTargetHeight() { mixin(MGPC!(float, 556)()); }
			float LastTargetRadius() { mixin(MGPC!(float, 552)()); }
			float LastAdhesionAmtZ() { mixin(MGPC!(float, 548)()); }
			float LastAdhesionAmtY() { mixin(MGPC!(float, 544)()); }
			float LastFrictionMultiplier() { mixin(MGPC!(float, 540)()); }
			float LastDistFromAimY() { mixin(MGPC!(float, 536)()); }
			float LastDistFromAimZ() { mixin(MGPC!(float, 532)()); }
			float LastDistMultiplier() { mixin(MGPC!(float, 528)()); }
			float LastDistToTarget() { mixin(MGPC!(float, 524)()); }
			float LastFrictionTargetTime() { mixin(MGPC!(float, 520)()); }
			Pawn LastFrictionTarget() { mixin(MGPC!(Pawn, 516)()); }
			float Dodge_Threshold() { mixin(MGPC!(float, 512)()); }
			float ViewAccel_Twitchy() { mixin(MGPC!(float, 508)()); }
			float ViewAccel_TimeHeld() { mixin(MGPC!(float, 504)()); }
			float ViewAccel_TimeToHoldBeforeFastAcceleration() { mixin(MGPC!(float, 500)()); }
			float ViewAccel_CurrMutliplier() { mixin(MGPC!(float, 496)()); }
			float ViewAccel_BaseMultiplier() { mixin(MGPC!(float, 492)()); }
			float ViewAccel_DiagonalThreshold() { mixin(MGPC!(float, 488)()); }
			float ViewAccel_YawThreshold() { mixin(MGPC!(float, 484)()); }
			float SlowTurnScaling() { mixin(MGPC!(float, 480)()); }
			float AutoVehicleCenterSpeed() { mixin(MGPC!(float, 476)()); }
			float AutoCenterDelay() { mixin(MGPC!(float, 472)()); }
			float LastTurnTime() { mixin(MGPC!(float, 468)()); }
			float TurningAccelerationMultiplier() { mixin(MGPC!(float, 460)()); }
			float SensitivityMultiplier() { mixin(MGPC!(float, 456)()); }
		}
		bool bIsLookingDown() { mixin(MGBPC!(464, 0x100)()); }
		bool bIsLookingDown(bool val) { mixin(MSBPC!(464, 0x100)()); }
		bool bIsLookingUp() { mixin(MGBPC!(464, 0x80)()); }
		bool bIsLookingUp(bool val) { mixin(MSBPC!(464, 0x80)()); }
		bool bAppliedTargetFriction() { mixin(MGBPC!(464, 0x40)()); }
		bool bAppliedTargetFriction(bool val) { mixin(MSBPC!(464, 0x40)()); }
		bool bDebugTargetFriction() { mixin(MGBPC!(464, 0x20)()); }
		bool bDebugTargetFriction(bool val) { mixin(MSBPC!(464, 0x20)()); }
		bool bTargetFrictionEnabled() { mixin(MGBPC!(464, 0x10)()); }
		bool bTargetFrictionEnabled(bool val) { mixin(MSBPC!(464, 0x10)()); }
		bool bDebugViewAcceleration() { mixin(MGBPC!(464, 0x8)()); }
		bool bDebugViewAcceleration(bool val) { mixin(MSBPC!(464, 0x8)()); }
		bool bViewAccelerationEnabled() { mixin(MGBPC!(464, 0x4)()); }
		bool bViewAccelerationEnabled(bool val) { mixin(MSBPC!(464, 0x4)()); }
		bool bAutoCenterVehiclePitch() { mixin(MGBPC!(464, 0x2)()); }
		bool bAutoCenterVehiclePitch(bool val) { mixin(MSBPC!(464, 0x2)()); }
		bool bAutoCenterPitch() { mixin(MGBPC!(464, 0x1)()); }
		bool bAutoCenterPitch(bool val) { mixin(MSBPC!(464, 0x1)()); }
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

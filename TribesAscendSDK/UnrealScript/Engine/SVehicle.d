module UnrealScript.Engine.SVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.RB_StayUprightSetup;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.HUD;

extern(C++) interface SVehicle : Vehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SVehicle")()); }
	private static __gshared SVehicle mDefaultProperties;
	@property final static SVehicle DefaultProperties() { mixin(MGDPC!(SVehicle, "SVehicle Engine.Default__SVehicle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddForce;
			ScriptFunction mAddImpulse;
			ScriptFunction mAddTorque;
			ScriptFunction mIsSleeping;
			ScriptFunction mSetWheelCollision;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mDestroyed;
			ScriptFunction mTurnOff;
			ScriptFunction mStopVehicleSounds;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mInitVehicleRagdoll;
			ScriptFunction mAddVelocity;
			ScriptFunction mDied;
			ScriptFunction mCalcCamera;
			ScriptFunction mGetDefaultCameraMode;
			ScriptFunction mTryToDrive;
			ScriptFunction mHasWheelsOnGround;
			ScriptFunction mStartEngineSound;
			ScriptFunction mStartEngineSoundTimed;
			ScriptFunction mStopEngineSound;
			ScriptFunction mStopEngineSoundTimed;
			ScriptFunction mVehiclePlayEnterSound;
			ScriptFunction mVehiclePlayExitSound;
			ScriptFunction mDrivingStatusChanged;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mSuspensionHeavyShift;
			ScriptFunction mPostTeleport;
			ScriptFunction mDisplayDebug;
			ScriptFunction mDisplayWheelsDebug;
			ScriptFunction mHermiteEval;
			ScriptFunction mGetSVehicleDebug;
		}
		public @property static final
		{
			ScriptFunction AddForce() { mixin(MGF!("mAddForce", "Function Engine.SVehicle.AddForce")()); }
			ScriptFunction AddImpulse() { mixin(MGF!("mAddImpulse", "Function Engine.SVehicle.AddImpulse")()); }
			ScriptFunction AddTorque() { mixin(MGF!("mAddTorque", "Function Engine.SVehicle.AddTorque")()); }
			ScriptFunction IsSleeping() { mixin(MGF!("mIsSleeping", "Function Engine.SVehicle.IsSleeping")()); }
			ScriptFunction SetWheelCollision() { mixin(MGF!("mSetWheelCollision", "Function Engine.SVehicle.SetWheelCollision")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.SVehicle.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function Engine.SVehicle.PostInitAnimTree")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.SVehicle.Destroyed")()); }
			ScriptFunction TurnOff() { mixin(MGF!("mTurnOff", "Function Engine.SVehicle.TurnOff")()); }
			ScriptFunction StopVehicleSounds() { mixin(MGF!("mStopVehicleSounds", "Function Engine.SVehicle.StopVehicleSounds")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function Engine.SVehicle.TakeRadiusDamage")()); }
			ScriptFunction InitVehicleRagdoll() { mixin(MGF!("mInitVehicleRagdoll", "Function Engine.SVehicle.InitVehicleRagdoll")()); }
			ScriptFunction AddVelocity() { mixin(MGF!("mAddVelocity", "Function Engine.SVehicle.AddVelocity")()); }
			ScriptFunction Died() { mixin(MGF!("mDied", "Function Engine.SVehicle.Died")()); }
			ScriptFunction CalcCamera() { mixin(MGF!("mCalcCamera", "Function Engine.SVehicle.CalcCamera")()); }
			ScriptFunction GetDefaultCameraMode() { mixin(MGF!("mGetDefaultCameraMode", "Function Engine.SVehicle.GetDefaultCameraMode")()); }
			ScriptFunction TryToDrive() { mixin(MGF!("mTryToDrive", "Function Engine.SVehicle.TryToDrive")()); }
			ScriptFunction HasWheelsOnGround() { mixin(MGF!("mHasWheelsOnGround", "Function Engine.SVehicle.HasWheelsOnGround")()); }
			ScriptFunction StartEngineSound() { mixin(MGF!("mStartEngineSound", "Function Engine.SVehicle.StartEngineSound")()); }
			ScriptFunction StartEngineSoundTimed() { mixin(MGF!("mStartEngineSoundTimed", "Function Engine.SVehicle.StartEngineSoundTimed")()); }
			ScriptFunction StopEngineSound() { mixin(MGF!("mStopEngineSound", "Function Engine.SVehicle.StopEngineSound")()); }
			ScriptFunction StopEngineSoundTimed() { mixin(MGF!("mStopEngineSoundTimed", "Function Engine.SVehicle.StopEngineSoundTimed")()); }
			ScriptFunction VehiclePlayEnterSound() { mixin(MGF!("mVehiclePlayEnterSound", "Function Engine.SVehicle.VehiclePlayEnterSound")()); }
			ScriptFunction VehiclePlayExitSound() { mixin(MGF!("mVehiclePlayExitSound", "Function Engine.SVehicle.VehiclePlayExitSound")()); }
			ScriptFunction DrivingStatusChanged() { mixin(MGF!("mDrivingStatusChanged", "Function Engine.SVehicle.DrivingStatusChanged")()); }
			ScriptFunction RigidBodyCollision() { mixin(MGF!("mRigidBodyCollision", "Function Engine.SVehicle.RigidBodyCollision")()); }
			ScriptFunction SuspensionHeavyShift() { mixin(MGF!("mSuspensionHeavyShift", "Function Engine.SVehicle.SuspensionHeavyShift")()); }
			ScriptFunction PostTeleport() { mixin(MGF!("mPostTeleport", "Function Engine.SVehicle.PostTeleport")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.SVehicle.DisplayDebug")()); }
			ScriptFunction DisplayWheelsDebug() { mixin(MGF!("mDisplayWheelsDebug", "Function Engine.SVehicle.DisplayWheelsDebug")()); }
			ScriptFunction HermiteEval() { mixin(MGF!("mHermiteEval", "Function Engine.SVehicle.HermiteEval")()); }
			ScriptFunction GetSVehicleDebug() { mixin(MGF!("mGetSVehicleDebug", "Function Engine.SVehicle.GetSVehicleDebug")()); }
		}
	}
	struct VehicleState
	{
		private ubyte __buffer__[76];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SVehicle.VehicleState")()); }
		@property final
		{
			auto ref
			{
				int ServerView() { mixin(MGPS!("int", 72)()); }
				ubyte ServerRise() { mixin(MGPS!("ubyte", 67)()); }
				ubyte ServerSteering() { mixin(MGPS!("ubyte", 66)()); }
				ubyte ServerGas() { mixin(MGPS!("ubyte", 65)()); }
				ubyte ServerBrake() { mixin(MGPS!("ubyte", 64)()); }
				Actor.RigidBodyState RBState() { mixin(MGPS!("Actor.RigidBodyState", 0)()); }
			}
			bool bServerHandbrake() { mixin(MGBPS!(68, 0x1)()); }
			bool bServerHandbrake(bool val) { mixin(MSBPS!(68, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) Wheels() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 1264)()); }
			float RadialImpulseScaling() { mixin(MGPC!("float", 1540)()); }
			float AngErrorAccumulator() { mixin(MGPC!("float", 1536)()); }
			SVehicle.VehicleState VState() { mixin(MGPC!("SVehicle.VehicleState", 1456)()); }
			int DriverViewYaw() { mixin(MGPC!("int", 1452)()); }
			int DriverViewPitch() { mixin(MGPC!("int", 1448)()); }
			float CamDist() { mixin(MGPC!("float", 1444)()); }
			Vector BaseOffset() { mixin(MGPC!("Vector", 1432)()); }
			int NumPoweredWheels() { mixin(MGPC!("int", 1428)()); }
			float ForwardVel() { mixin(MGPC!("float", 1424)()); }
			float OutputRise() { mixin(MGPC!("float", 1420)()); }
			float OutputSteering() { mixin(MGPC!("float", 1416)()); }
			float OutputGas() { mixin(MGPC!("float", 1412)()); }
			float OutputBrake() { mixin(MGPC!("float", 1408)()); }
			float LastCollisionSoundTime() { mixin(MGPC!("float", 1404)()); }
			float EngineStopOffsetSecs() { mixin(MGPC!("float", 1400)()); }
			float EngineStartOffsetSecs() { mixin(MGPC!("float", 1396)()); }
			float LatAngleVolumeMult() { mixin(MGPC!("float", 1392)()); }
			float SquealLatThreshold() { mixin(MGPC!("float", 1388)()); }
			float SquealThreshold() { mixin(MGPC!("float", 1384)()); }
			float CollisionIntervalSecs() { mixin(MGPC!("float", 1380)()); }
			SoundCue ExitVehicleSound() { mixin(MGPC!("SoundCue", 1376)()); }
			SoundCue EnterVehicleSound() { mixin(MGPC!("SoundCue", 1372)()); }
			SoundCue CollisionSound() { mixin(MGPC!("SoundCue", 1368)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SquealSound'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'EngineSound'!
			float UprightStartTime() { mixin(MGPC!("float", 1356)()); }
			float UprightTime() { mixin(MGPC!("float", 1352)()); }
			float UprightTorqueStrength() { mixin(MGPC!("float", 1348)()); }
			float UprightLiftStrength() { mixin(MGPC!("float", 1344)()); }
			float TimeOffGround() { mixin(MGPC!("float", 1340)()); }
			float MaxAngularVelocity() { mixin(MGPC!("float", 1336)()); }
			float MaxSpeed() { mixin(MGPC!("float", 1332)()); }
			float HeavySuspensionShiftPercent() { mixin(MGPC!("float", 1328)()); }
			RB_ConstraintInstance StayUprightConstraintInstance() { mixin(MGPC!("RB_ConstraintInstance", 1324)()); }
			RB_StayUprightSetup StayUprightConstraintSetup() { mixin(MGPC!("RB_StayUprightSetup", 1320)()); }
			float StayUprightDamping() { mixin(MGPC!("float", 1316)()); }
			float StayUprightStiffness() { mixin(MGPC!("float", 1312)()); }
			float StayUprightPitchResistAngle() { mixin(MGPC!("float", 1308)()); }
			float StayUprightRollResistAngle() { mixin(MGPC!("float", 1304)()); }
			Vector InertiaTensorMultiplier() { mixin(MGPC!("Vector", 1288)()); }
			Vector COMOffset() { mixin(MGPC!("Vector", 1276)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SimObj'!
		}
		bool bHoldingDownHandbrake() { mixin(MGBPC!(1300, 0x1000)()); }
		bool bHoldingDownHandbrake(bool val) { mixin(MSBPC!(1300, 0x1000)()); }
		bool bOutputHandbrake() { mixin(MGBPC!(1300, 0x800)()); }
		bool bOutputHandbrake(bool val) { mixin(MSBPC!(1300, 0x800)()); }
		bool bIsUprighting() { mixin(MGBPC!(1300, 0x400)()); }
		bool bIsUprighting(bool val) { mixin(MSBPC!(1300, 0x400)()); }
		bool bFlipRight() { mixin(MGBPC!(1300, 0x200)()); }
		bool bFlipRight(bool val) { mixin(MSBPC!(1300, 0x200)()); }
		bool bCanFlip() { mixin(MGBPC!(1300, 0x100)()); }
		bool bCanFlip(bool val) { mixin(MSBPC!(1300, 0x100)()); }
		bool bWasChassisTouchingGroundLastTick() { mixin(MGBPC!(1300, 0x80)()); }
		bool bWasChassisTouchingGroundLastTick(bool val) { mixin(MSBPC!(1300, 0x80)()); }
		bool bChassisTouchingGround() { mixin(MGBPC!(1300, 0x40)()); }
		bool bChassisTouchingGround(bool val) { mixin(MSBPC!(1300, 0x40)()); }
		bool bIsInverted() { mixin(MGBPC!(1300, 0x20)()); }
		bool bIsInverted(bool val) { mixin(MSBPC!(1300, 0x20)()); }
		bool bVehicleOnWater() { mixin(MGBPC!(1300, 0x10)()); }
		bool bVehicleOnWater(bool val) { mixin(MSBPC!(1300, 0x10)()); }
		bool bVehicleOnGround() { mixin(MGBPC!(1300, 0x8)()); }
		bool bVehicleOnGround(bool val) { mixin(MSBPC!(1300, 0x8)()); }
		bool bUpdateWheelShapes() { mixin(MGBPC!(1300, 0x4)()); }
		bool bUpdateWheelShapes(bool val) { mixin(MSBPC!(1300, 0x4)()); }
		bool bUseSuspensionAxis() { mixin(MGBPC!(1300, 0x2)()); }
		bool bUseSuspensionAxis(bool val) { mixin(MSBPC!(1300, 0x2)()); }
		bool bStayUpright() { mixin(MGBPC!(1300, 0x1)()); }
		bool bStayUpright(bool val) { mixin(MSBPC!(1300, 0x1)()); }
	}
final:
	void AddForce(Vector Force)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Force;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddForce, params.ptr, cast(void*)0);
	}
	void AddImpulse(Vector Impulse)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddImpulse, params.ptr, cast(void*)0);
	}
	void AddTorque(Vector Torque)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Torque;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTorque, params.ptr, cast(void*)0);
	}
	bool IsSleeping()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSleeping, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetWheelCollision(int WheelNum, bool bCollision)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = WheelNum;
		*cast(bool*)&params[4] = bCollision;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWheelCollision, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOff, cast(void*)0, cast(void*)0);
	}
	void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopVehicleSounds, cast(void*)0, cast(void*)0);
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
	void InitVehicleRagdoll(SkeletalMesh RagdollMesh, PhysicsAsset RagdollPhysAsset, Vector ActorMove, bool bClearAnimTree)
	{
		ubyte params[24];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = RagdollMesh;
		*cast(PhysicsAsset*)&params[4] = RagdollPhysAsset;
		*cast(Vector*)&params[8] = ActorMove;
		*cast(bool*)&params[20] = bClearAnimTree;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitVehicleRagdoll, params.ptr, cast(void*)0);
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
	ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDefaultCameraMode, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasWheelsOnGround()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasWheelsOnGround, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StartEngineSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartEngineSound, cast(void*)0, cast(void*)0);
	}
	void StartEngineSoundTimed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartEngineSoundTimed, cast(void*)0, cast(void*)0);
	}
	void StopEngineSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopEngineSound, cast(void*)0, cast(void*)0);
	}
	void StopEngineSoundTimed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopEngineSoundTimed, cast(void*)0, cast(void*)0);
	}
	void VehiclePlayEnterSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VehiclePlayEnterSound, cast(void*)0, cast(void*)0);
	}
	void VehiclePlayExitSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VehiclePlayExitSound, cast(void*)0, cast(void*)0);
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrivingStatusChanged, cast(void*)0, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, ref in Actor.CollisionImpactData RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = cast(Actor.CollisionImpactData)RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
	}
	void SuspensionHeavyShift(float Delta)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuspensionHeavyShift, params.ptr, cast(void*)0);
	}
	void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTeleport, params.ptr, cast(void*)0);
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
	void DisplayWheelsDebug(HUD pHUD, float YL)
	{
		ubyte params[8];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = YL;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayWheelsDebug, params.ptr, cast(void*)0);
	}
	float HermiteEval(float Slip)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Slip;
		(cast(ScriptObject)this).ProcessEvent(Functions.HermiteEval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void GetSVehicleDebug(ref ScriptArray!(ScriptString) DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSVehicleDebug, params.ptr, cast(void*)0);
		DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}

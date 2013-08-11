module UnrealScript.Engine.SVehicle;

import ScriptClasses;
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
	struct VehicleState
	{
		public @property final auto ref int ServerView() { return *cast(int*)(cast(size_t)&this + 72); }
		private ubyte __ServerView[4];
		public @property final bool bServerHandbrake() { return (*cast(uint*)(cast(size_t)&this + 68) & 0x1) != 0; }
		public @property final bool bServerHandbrake(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 68) &= ~0x1; } return val; }
		private ubyte __bServerHandbrake[4];
		public @property final auto ref ubyte ServerRise() { return *cast(ubyte*)(cast(size_t)&this + 67); }
		private ubyte __ServerRise[1];
		public @property final auto ref ubyte ServerSteering() { return *cast(ubyte*)(cast(size_t)&this + 66); }
		private ubyte __ServerSteering[1];
		public @property final auto ref ubyte ServerGas() { return *cast(ubyte*)(cast(size_t)&this + 65); }
		private ubyte __ServerGas[1];
		public @property final auto ref ubyte ServerBrake() { return *cast(ubyte*)(cast(size_t)&this + 64); }
		private ubyte __ServerBrake[1];
		public @property final auto ref Actor.RigidBodyState RBState() { return *cast(Actor.RigidBodyState*)(cast(size_t)&this + 0); }
		private ubyte __RBState[64];
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) Wheels() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 1264); }
	public @property final auto ref float RadialImpulseScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref float AngErrorAccumulator() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref SVehicle.VehicleState VState() { return *cast(SVehicle.VehicleState*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref int DriverViewYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1452); }
	public @property final auto ref int DriverViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1448); }
	public @property final auto ref float CamDist() { return *cast(float*)(cast(size_t)cast(void*)this + 1444); }
	public @property final auto ref Vector BaseOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref int NumPoweredWheels() { return *cast(int*)(cast(size_t)cast(void*)this + 1428); }
	public @property final auto ref float ForwardVel() { return *cast(float*)(cast(size_t)cast(void*)this + 1424); }
	public @property final auto ref float OutputRise() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
	public @property final auto ref float OutputSteering() { return *cast(float*)(cast(size_t)cast(void*)this + 1416); }
	public @property final auto ref float OutputGas() { return *cast(float*)(cast(size_t)cast(void*)this + 1412); }
	public @property final auto ref float OutputBrake() { return *cast(float*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref float LastCollisionSoundTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref float EngineStopOffsetSecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1400); }
	public @property final auto ref float EngineStartOffsetSecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1396); }
	public @property final auto ref float LatAngleVolumeMult() { return *cast(float*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref float SquealLatThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
	public @property final auto ref float SquealThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref float CollisionIntervalSecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref SoundCue ExitVehicleSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1376); }
	public @property final auto ref SoundCue EnterVehicleSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref SoundCue CollisionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref float UprightStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1356); }
	public @property final auto ref float UprightTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref float UprightTorqueStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref float UprightLiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref float TimeOffGround() { return *cast(float*)(cast(size_t)cast(void*)this + 1340); }
	public @property final auto ref float MaxAngularVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref float HeavySuspensionShiftPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 1328); }
	public @property final auto ref RB_ConstraintInstance StayUprightConstraintInstance() { return *cast(RB_ConstraintInstance*)(cast(size_t)cast(void*)this + 1324); }
	public @property final auto ref RB_StayUprightSetup StayUprightConstraintSetup() { return *cast(RB_StayUprightSetup*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref float StayUprightDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
	public @property final auto ref float StayUprightStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
	public @property final auto ref float StayUprightPitchResistAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref float StayUprightRollResistAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 1304); }
	public @property final bool bHoldingDownHandbrake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x1000) != 0; }
	public @property final bool bHoldingDownHandbrake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x1000; } return val; }
	public @property final bool bOutputHandbrake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x800) != 0; }
	public @property final bool bOutputHandbrake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x800; } return val; }
	public @property final bool bIsUprighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x400) != 0; }
	public @property final bool bIsUprighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x400; } return val; }
	public @property final bool bFlipRight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x200) != 0; }
	public @property final bool bFlipRight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x200; } return val; }
	public @property final bool bCanFlip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x100) != 0; }
	public @property final bool bCanFlip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x100; } return val; }
	public @property final bool bWasChassisTouchingGroundLastTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x80) != 0; }
	public @property final bool bWasChassisTouchingGroundLastTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x80; } return val; }
	public @property final bool bChassisTouchingGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x40) != 0; }
	public @property final bool bChassisTouchingGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x40; } return val; }
	public @property final bool bIsInverted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x20) != 0; }
	public @property final bool bIsInverted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x20; } return val; }
	public @property final bool bVehicleOnWater() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x10) != 0; }
	public @property final bool bVehicleOnWater(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x10; } return val; }
	public @property final bool bVehicleOnGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x8) != 0; }
	public @property final bool bVehicleOnGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x8; } return val; }
	public @property final bool bUpdateWheelShapes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x4) != 0; }
	public @property final bool bUpdateWheelShapes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x4; } return val; }
	public @property final bool bUseSuspensionAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x2) != 0; }
	public @property final bool bUseSuspensionAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x2; } return val; }
	public @property final bool bStayUpright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1300) & 0x1) != 0; }
	public @property final bool bStayUpright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1300) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1300) &= ~0x1; } return val; }
	public @property final auto ref Vector InertiaTensorMultiplier() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1288); }
	public @property final auto ref Vector COMOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1276); }
	final void AddForce(Vector Force)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Force;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27501], params.ptr, cast(void*)0);
	}
	final void AddImpulse(Vector Impulse)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27503], params.ptr, cast(void*)0);
	}
	final void AddTorque(Vector Torque)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Torque;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27505], params.ptr, cast(void*)0);
	}
	final bool IsSleeping()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27507], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetWheelCollision(int WheelNum, bool bCollision)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = WheelNum;
		*cast(bool*)&params[4] = bCollision;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27509], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27512], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27513], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27519], cast(void*)0, cast(void*)0);
	}
	final void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27520], cast(void*)0, cast(void*)0);
	}
	final void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27521], cast(void*)0, cast(void*)0);
	}
	final void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27522], params.ptr, cast(void*)0);
	}
	final void InitVehicleRagdoll(SkeletalMesh RagdollMesh, PhysicsAsset RagdollPhysAsset, Vector ActorMove, bool bClearAnimTree)
	{
		ubyte params[24];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = RagdollMesh;
		*cast(PhysicsAsset*)&params[4] = RagdollPhysAsset;
		*cast(Vector*)&params[8] = ActorMove;
		*cast(bool*)&params[20] = bClearAnimTree;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27538], params.ptr, cast(void*)0);
	}
	final void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass DamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27543], params.ptr, cast(void*)0);
	}
	final bool Died(Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27548], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27553], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27562], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27565], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasWheelsOnGround()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27568], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void StartEngineSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27570], cast(void*)0, cast(void*)0);
	}
	final void StartEngineSoundTimed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27571], cast(void*)0, cast(void*)0);
	}
	final void StopEngineSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27572], cast(void*)0, cast(void*)0);
	}
	final void StopEngineSoundTimed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27573], cast(void*)0, cast(void*)0);
	}
	final void VehiclePlayEnterSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27574], cast(void*)0, cast(void*)0);
	}
	final void VehiclePlayExitSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27575], cast(void*)0, cast(void*)0);
	}
	final void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27576], cast(void*)0, cast(void*)0);
	}
	final void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27577], params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	final void SuspensionHeavyShift(float Delta)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27582], params.ptr, cast(void*)0);
	}
	final void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27584], params.ptr, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27586], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void DisplayWheelsDebug(HUD pHUD, float YL)
	{
		ubyte params[8];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = YL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27593], params.ptr, cast(void*)0);
	}
	final float HermiteEval(float Slip)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Slip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27622], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void GetSVehicleDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27637], params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}

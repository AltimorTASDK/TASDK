module UnrealScript.UDKBase.UDKSkelControl_TurretConstrained;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_TurretConstrained : SkelControlSingleBone
{
	struct TurretStepData
	{
		public @property final auto ref UDKSkelControl_TurretConstrained.TurretConstraintData MinAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)&this + 20); }
		private ubyte __MinAngle[12];
		public @property final auto ref UDKSkelControl_TurretConstrained.TurretConstraintData MaxAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)&this + 8); }
		private ubyte __MaxAngle[12];
		public @property final auto ref int StepEndAngle() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __StepEndAngle[4];
		public @property final auto ref int StepStartAngle() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __StepStartAngle[4];
	}
	struct TurretConstraintData
	{
		public @property final auto ref int RollConstraint() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __RollConstraint[4];
		public @property final auto ref int YawConstraint() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __YawConstraint[4];
		public @property final auto ref int PitchConstraint() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PitchConstraint[4];
	}
	public @property final auto ref ScriptArray!(UDKSkelControl_TurretConstrained.TurretStepData) Steps() { return *cast(ScriptArray!(UDKSkelControl_TurretConstrained.TurretStepData)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref Rotator ConstrainedBoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref int AssociatedSeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref Rotator DesiredBoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float PitchSpeedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float LagDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref UDKSkelControl_TurretConstrained.TurretConstraintData MinAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UDKSkelControl_TurretConstrained.TurretConstraintData MaxAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bIsInMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x100) != 0; }
	public @property final bool bIsInMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x100; } return val; }
	public @property final bool bResetWhenUnattended() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
	public @property final bool bResetWhenUnattended(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
	public @property final bool bFixedWhenFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
	public @property final bool bFixedWhenFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
	public @property final bool bInvertRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
	public @property final bool bInvertRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
	public @property final bool bInvertYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
	public @property final bool bInvertYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
	public @property final bool bInvertPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
	public @property final bool bInvertPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
	public @property final bool bConstrainRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
	public @property final bool bConstrainRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
	public @property final bool bConstrainYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bConstrainYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final bool bConstrainPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bConstrainPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	final void OnTurretStatusChange(bool bIsMoving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsMoving;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35459], params.ptr, cast(void*)0);
	}
	final void InitTurret(Rotator InitRot, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = InitRot;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[12] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35485], params.ptr, cast(void*)0);
	}
	final bool WouldConstrainPitch(int TestPitch, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = TestPitch;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35488], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}

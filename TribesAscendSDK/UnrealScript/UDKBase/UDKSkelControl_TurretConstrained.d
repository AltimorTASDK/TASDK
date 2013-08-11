module UnrealScript.UDKBase.UDKSkelControl_TurretConstrained;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_TurretConstrained : SkelControlSingleBone
{
public extern(D):
	struct TurretStepData
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			UDKSkelControl_TurretConstrained.TurretConstraintData MinAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)&this + 20); }
			UDKSkelControl_TurretConstrained.TurretConstraintData MaxAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)&this + 8); }
			int StepEndAngle() { return *cast(int*)(cast(size_t)&this + 4); }
			int StepStartAngle() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct TurretConstraintData
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			int RollConstraint() { return *cast(int*)(cast(size_t)&this + 8); }
			int YawConstraint() { return *cast(int*)(cast(size_t)&this + 4); }
			int PitchConstraint() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKSkelControl_TurretConstrained.TurretStepData) Steps() { return *cast(ScriptArray!(UDKSkelControl_TurretConstrained.TurretStepData)*)(cast(size_t)cast(void*)this + 264); }
			Rotator ConstrainedBoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 300); }
			int AssociatedSeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
			Rotator DesiredBoneRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 284); }
			float PitchSpeedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float LagDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			UDKSkelControl_TurretConstrained.TurretConstraintData MinAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)cast(void*)this + 252); }
			UDKSkelControl_TurretConstrained.TurretConstraintData MaxAngle() { return *cast(UDKSkelControl_TurretConstrained.TurretConstraintData*)(cast(size_t)cast(void*)this + 240); }
		}
		bool bIsInMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x100) != 0; }
		bool bIsInMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x100; } return val; }
		bool bResetWhenUnattended() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
		bool bResetWhenUnattended(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
		bool bFixedWhenFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
		bool bFixedWhenFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
		bool bInvertRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
		bool bInvertRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
		bool bInvertYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
		bool bInvertYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
		bool bInvertPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
		bool bInvertPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
		bool bConstrainRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bConstrainRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bConstrainYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bConstrainYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bConstrainPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bConstrainPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
final:
	void OnTurretStatusChange(bool bIsMoving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsMoving;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35459], params.ptr, cast(void*)0);
	}
	void InitTurret(Rotator InitRot, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = InitRot;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35485], params.ptr, cast(void*)0);
	}
	bool WouldConstrainPitch(int TestPitch, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = TestPitch;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35488], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}

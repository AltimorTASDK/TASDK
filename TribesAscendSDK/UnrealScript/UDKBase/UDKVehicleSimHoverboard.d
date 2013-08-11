module UnrealScript.UDKBase.UDKVehicleSimHoverboard;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface UDKVehicleSimHoverboard : SVehicleSimBase
{
	public @property final auto ref float CurrentLookYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float SlalomSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float HoverboardSlalomMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float CurrentSteerOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float LandedCountdown() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float SpinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float AutoSpin() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float SpinHeadingOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float TrickJumpWarmup() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float TakeoffYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref Vector GroundNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref SoundCue OverWaterSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float WaterCheckLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref float StopThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final bool bLeftGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x4) != 0; }
	public @property final bool bLeftGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x4; } return val; }
	public @property final bool bInAJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2) != 0; }
	public @property final bool bInAJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2; } return val; }
	public @property final bool bIsOverDeepWater() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
	public @property final bool bIsOverDeepWater(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
	public @property final auto ref UObject.InterpCurveFloat TurnDampingSpeedFunc() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float MaxTurnTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float SpinTurnTorqueScale() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float TurnTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float MaxRiseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float LatDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float MaxStrafeForce() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float LongDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float MaxReverseVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float MaxReverseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float MaxThrustForce() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	final void InitWheels(UDKVehicle Vehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = Vehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36251], params.ptr, cast(void*)0);
	}
	final void UpdateLeanConstraint(RB_ConstraintInstance LeanUprightConstraintInstance, Vector LeanY, Vector LeanZ)
	{
		ubyte params[28];
		params[] = 0;
		*cast(RB_ConstraintInstance*)params.ptr = LeanUprightConstraintInstance;
		*cast(Vector*)&params[4] = LeanY;
		*cast(Vector*)&params[16] = LeanZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36253], params.ptr, cast(void*)0);
	}
}

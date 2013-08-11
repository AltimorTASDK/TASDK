module UnrealScript.UDKBase.UDKVehicleSimHoverboard;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface UDKVehicleSimHoverboard : SVehicleSimBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			float CurrentLookYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float SlalomSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float HoverboardSlalomMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float CurrentSteerOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float LandedCountdown() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float SpinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float AutoSpin() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float SpinHeadingOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float TrickJumpWarmup() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float TakeoffYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			Vector GroundNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 216); }
			SoundCue OverWaterSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 212); }
			float WaterCheckLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			float StopThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			UObject.InterpCurveFloat TurnDampingSpeedFunc() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 184); }
			float MaxTurnTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float SpinTurnTorqueScale() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float TurnTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float MaxRiseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float LatDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float MaxStrafeForce() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float LongDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float MaxReverseVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float MaxReverseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float MaxThrustForce() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bLeftGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x4) != 0; }
		bool bLeftGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x4; } return val; }
		bool bInAJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2) != 0; }
		bool bInAJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2; } return val; }
		bool bIsOverDeepWater() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
		bool bIsOverDeepWater(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
	}
final:
	void InitWheels(UDKVehicle pVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = pVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36251], params.ptr, cast(void*)0);
	}
	void UpdateLeanConstraint(RB_ConstraintInstance LeanUprightConstraintInstance, Vector LeanY, Vector LeanZ)
	{
		ubyte params[28];
		params[] = 0;
		*cast(RB_ConstraintInstance*)params.ptr = LeanUprightConstraintInstance;
		*cast(Vector*)&params[4] = LeanY;
		*cast(Vector*)&params[16] = LeanZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36253], params.ptr, cast(void*)0);
	}
}

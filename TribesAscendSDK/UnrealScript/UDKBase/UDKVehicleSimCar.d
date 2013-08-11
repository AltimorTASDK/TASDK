module UnrealScript.UDKBase.UDKVehicleSimCar;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SVehicleSimCar;

extern(C++) interface UDKVehicleSimCar : SVehicleSimCar
{
	public @property final auto ref float InAirUprightMaxTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float InAirUprightTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref float AirControlTurnTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float SpeedBasedTurnDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float ConsoleHardTurnGripFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float FrontalCollisionGripFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float ActualHandbrake() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float HandbrakeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float HardTurnMotorTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float MinHardTurnSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float SteeringReductionMinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float SteeringReductionSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref int NumWheelsForFullSteering() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float CurrentSteeringReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float SteeringReductionRampUpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float SteeringReductionFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bAutoHandbrake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x8) != 0; }
	public @property final bool bAutoHandbrake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x8; } return val; }
	public @property final bool bDriverlessBraking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
	public @property final bool bDriverlessBraking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
	public @property final bool bHasForcedThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
	public @property final bool bHasForcedThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
	public @property final bool bForceThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
	public @property final bool bForceThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	public @property final auto ref float ActualThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float MaxRPM() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float MinRPM() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float ThrottleSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float LSDFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref UObject.InterpCurveFloat EngineRPMCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref UObject.InterpCurveFloat TorqueVSpeedCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 196); }
}

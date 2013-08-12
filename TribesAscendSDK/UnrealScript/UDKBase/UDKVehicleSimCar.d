module UnrealScript.UDKBase.UDKVehicleSimCar;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SVehicleSimCar;

extern(C++) interface UDKVehicleSimCar : SVehicleSimCar
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKVehicleSimCar")); }
	private static __gshared UDKVehicleSimCar mDefaultProperties;
	@property final static UDKVehicleSimCar DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKVehicleSimCar)("UDKVehicleSimCar UDKBase.Default__UDKVehicleSimCar")); }
	@property final
	{
		auto ref
		{
			float InAirUprightMaxTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			float InAirUprightTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
			float AirControlTurnTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			float SpeedBasedTurnDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
			float ConsoleHardTurnGripFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			float FrontalCollisionGripFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float ActualHandbrake() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float HandbrakeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float HardTurnMotorTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float MinHardTurnSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			float SteeringReductionMinSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float SteeringReductionSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			int NumWheelsForFullSteering() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
			float CurrentSteeringReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float SteeringReductionRampUpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float SteeringReductionFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float ActualThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float MaxRPM() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float MinRPM() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float ThrottleSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float LSDFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			UObject.InterpCurveFloat EngineRPMCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 212); }
			UObject.InterpCurveFloat TorqueVSpeedCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 196); }
		}
		bool bAutoHandbrake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x8) != 0; }
		bool bAutoHandbrake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x8; } return val; }
		bool bDriverlessBraking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
		bool bDriverlessBraking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
		bool bHasForcedThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bHasForcedThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bForceThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bForceThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
}

module UnrealScript.UDKBase.UDKVehicleSimCar;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SVehicleSimCar;

extern(C++) interface UDKVehicleSimCar : SVehicleSimCar
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKVehicleSimCar")()); }
	private static __gshared UDKVehicleSimCar mDefaultProperties;
	@property final static UDKVehicleSimCar DefaultProperties() { mixin(MGDPC!(UDKVehicleSimCar, "UDKVehicleSimCar UDKBase.Default__UDKVehicleSimCar")()); }
	@property final
	{
		auto ref
		{
			float InAirUprightMaxTorque() { mixin(MGPC!(float, 312)()); }
			float InAirUprightTorqueFactor() { mixin(MGPC!(float, 308)()); }
			float AirControlTurnTorque() { mixin(MGPC!(float, 304)()); }
			float SpeedBasedTurnDamping() { mixin(MGPC!(float, 300)()); }
			float ConsoleHardTurnGripFactor() { mixin(MGPC!(float, 296)()); }
			float FrontalCollisionGripFactor() { mixin(MGPC!(float, 292)()); }
			float ActualHandbrake() { mixin(MGPC!(float, 288)()); }
			float HandbrakeSpeed() { mixin(MGPC!(float, 284)()); }
			float HardTurnMotorTorque() { mixin(MGPC!(float, 280)()); }
			float MinHardTurnSpeed() { mixin(MGPC!(float, 276)()); }
			float SteeringReductionMinSpeed() { mixin(MGPC!(float, 272)()); }
			float SteeringReductionSpeed() { mixin(MGPC!(float, 268)()); }
			int NumWheelsForFullSteering() { mixin(MGPC!(int, 264)()); }
			float CurrentSteeringReduction() { mixin(MGPC!(float, 260)()); }
			float SteeringReductionRampUpRate() { mixin(MGPC!(float, 256)()); }
			float SteeringReductionFactor() { mixin(MGPC!(float, 252)()); }
			float ActualThrottle() { mixin(MGPC!(float, 244)()); }
			float MaxRPM() { mixin(MGPC!(float, 240)()); }
			float MinRPM() { mixin(MGPC!(float, 236)()); }
			float ThrottleSpeed() { mixin(MGPC!(float, 232)()); }
			float LSDFactor() { mixin(MGPC!(float, 228)()); }
			UObject.InterpCurveFloat EngineRPMCurve() { mixin(MGPC!(UObject.InterpCurveFloat, 212)()); }
			UObject.InterpCurveFloat TorqueVSpeedCurve() { mixin(MGPC!(UObject.InterpCurveFloat, 196)()); }
		}
		bool bAutoHandbrake() { mixin(MGBPC!(248, 0x8)()); }
		bool bAutoHandbrake(bool val) { mixin(MSBPC!(248, 0x8)()); }
		bool bDriverlessBraking() { mixin(MGBPC!(248, 0x4)()); }
		bool bDriverlessBraking(bool val) { mixin(MSBPC!(248, 0x4)()); }
		bool bHasForcedThrottle() { mixin(MGBPC!(248, 0x2)()); }
		bool bHasForcedThrottle(bool val) { mixin(MSBPC!(248, 0x2)()); }
		bool bForceThrottle() { mixin(MGBPC!(248, 0x1)()); }
		bool bForceThrottle(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
}

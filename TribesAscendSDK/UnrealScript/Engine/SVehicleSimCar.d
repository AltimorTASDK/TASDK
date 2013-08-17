module UnrealScript.Engine.SVehicleSimCar;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface SVehicleSimCar : SVehicleSimBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SVehicleSimCar")); }
	private static __gshared SVehicleSimCar mDefaultProperties;
	@property final static SVehicleSimCar DefaultProperties() { mixin(MGDPC("SVehicleSimCar", "SVehicleSimCar Engine.Default__SVehicleSimCar")); }
	@property final
	{
		auto ref
		{
			float TimeSinceThrottle() { mixin(MGPC("float", 192)); }
			float ActualSteering() { mixin(MGPC("float", 188)); }
			float StopThreshold() { mixin(MGPC("float", 180)); }
			float MaxBrakeTorque() { mixin(MGPC("float", 176)); }
			float EngineBrakeFactor() { mixin(MGPC("float", 172)); }
			float ReverseThrottle() { mixin(MGPC("float", 168)); }
			float SteerSpeed() { mixin(MGPC("float", 164)); }
			UObject.InterpCurveFloat MaxSteerAngleCurve() { mixin(MGPC("UObject.InterpCurveFloat", 148)); }
			float ChassisTorqueScale() { mixin(MGPC("float", 144)); }
		}
		bool bIsDriving() { mixin(MGBPC(184, 0x1)); }
		bool bIsDriving(bool val) { mixin(MSBPC(184, 0x1)); }
	}
}

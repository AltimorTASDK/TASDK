module UnrealScript.Engine.SVehicleSimCar;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface SVehicleSimCar : SVehicleSimBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			float TimeSinceThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			float ActualSteering() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float StopThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float MaxBrakeTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float EngineBrakeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float ReverseThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float SteerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			UObject.InterpCurveFloat MaxSteerAngleCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 148); }
			float ChassisTorqueScale() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bIsDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
		bool bIsDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	}
}

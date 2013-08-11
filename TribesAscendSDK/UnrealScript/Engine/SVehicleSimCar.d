module UnrealScript.Engine.SVehicleSimCar;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface SVehicleSimCar : SVehicleSimBase
{
	public @property final auto ref float TimeSinceThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float ActualSteering() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final bool bIsDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
	public @property final bool bIsDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	public @property final auto ref float StopThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float MaxBrakeTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float EngineBrakeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float ReverseThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float SteerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref UObject.InterpCurveFloat MaxSteerAngleCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float ChassisTorqueScale() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
}

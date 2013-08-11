module UnrealScript.Engine.SVehicleSimTank;

import UnrealScript.Engine.SVehicleSimCar;

extern(C++) interface SVehicleSimTank : SVehicleSimCar
{
	public @property final bool bTurnInPlaceOnSteer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
	public @property final bool bTurnInPlaceOnSteer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
	public @property final auto ref float TurnGripScaleRate() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float TurnMaxGripReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float TurnInPlaceThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float SteeringLatStiffnessFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float InsideTrackTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float EngineDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float MaxEngineTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float RightTrackTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref float LeftTrackTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float RightTrackVel() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float LeftTrackVel() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
}

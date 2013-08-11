module UnrealScript.UDKBase.UDKVehicleSimChopper;

import ScriptClasses;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface UDKVehicleSimChopper : SVehicleSimBase
{
	struct AnglePID
	{
		public @property final auto ref float PrevError() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __PrevError[4];
		public @property final auto ref float PrevIntegral() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __PrevIntegral[4];
		public @property final auto ref float IGain() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __IGain[4];
		public @property final auto ref float DGain() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __DGain[4];
		public @property final auto ref float PGain() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __PGain[4];
	}
	public @property final auto ref float HardLimitAirSpeedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float StoppedBrakeTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref Vector OldVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float CurrentStabilizationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float StabilizationForceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float AccumulatedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref Vector RandTorque() { return *cast(Vector*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref Vector RandForce() { return *cast(Vector*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float PitchViewCorrelation() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float TargetPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float TargetHeading() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float StrafeTurnDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bStabilizeStops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x40) != 0; }
	public @property final bool bStabilizeStops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x40; } return val; }
	public @property final bool bHeadingInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
	public @property final bool bHeadingInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
	public @property final bool bStrafeAffectsTurnDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
	public @property final bool bStrafeAffectsTurnDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
	public @property final bool bRecentlyHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
	public @property final bool bRecentlyHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	public @property final bool bShouldCutThrustMaxOnImpact() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bShouldCutThrustMaxOnImpact(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final bool bFullThrustOnDirectionChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bFullThrustOnDirectionChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bAllowZThrust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bAllowZThrust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	public @property final auto ref float RandForceInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float MaxRandForce() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float StopThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float RollDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float RollTorqueMax() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float RollTorqueStrafeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref float RollTorqueTurnFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float PitchDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float PitchTorqueMax() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float PitchTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float MaxYawRate() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float TurnDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float TurnTorqueMax() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float TurnTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float UpDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float MaxRiseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float DirectionChangeForce() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float LatDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float MaxStrafeForce() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float LongDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float MaxReverseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float MaxThrustForce() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
}

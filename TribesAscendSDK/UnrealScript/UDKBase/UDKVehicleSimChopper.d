module UnrealScript.UDKBase.UDKVehicleSimChopper;

import ScriptClasses;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface UDKVehicleSimChopper : SVehicleSimBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKVehicleSimChopper")); }
	struct AnglePID
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKVehicleSimChopper.AnglePID")); }
		@property final auto ref
		{
			float PrevError() { return *cast(float*)(cast(size_t)&this + 16); }
			float PrevIntegral() { return *cast(float*)(cast(size_t)&this + 12); }
			float IGain() { return *cast(float*)(cast(size_t)&this + 8); }
			float DGain() { return *cast(float*)(cast(size_t)&this + 4); }
			float PGain() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			float HardLimitAirSpeedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			float StoppedBrakeTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
			Vector OldVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 288); }
			float CurrentStabilizationMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float StabilizationForceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float AccumulatedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			Vector RandTorque() { return *cast(Vector*)(cast(size_t)cast(void*)this + 264); }
			Vector RandForce() { return *cast(Vector*)(cast(size_t)cast(void*)this + 252); }
			float PitchViewCorrelation() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float TargetPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float TargetHeading() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float StrafeTurnDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float RandForceInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			float MaxRandForce() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float StopThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			float RollDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float RollTorqueMax() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float RollTorqueStrafeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			float RollTorqueTurnFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			float PitchDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			float PitchTorqueMax() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
			float PitchTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			float MaxYawRate() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float TurnDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float TurnTorqueMax() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float TurnTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float UpDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float MaxRiseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float DirectionChangeForce() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float LatDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float MaxStrafeForce() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float LongDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float MaxReverseForce() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float MaxThrustForce() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bStabilizeStops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x40) != 0; }
		bool bStabilizeStops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x40; } return val; }
		bool bHeadingInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
		bool bHeadingInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
		bool bStrafeAffectsTurnDamping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
		bool bStrafeAffectsTurnDamping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
		bool bRecentlyHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
		bool bRecentlyHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
		bool bShouldCutThrustMaxOnImpact() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
		bool bShouldCutThrustMaxOnImpact(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
		bool bFullThrustOnDirectionChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bFullThrustOnDirectionChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bAllowZThrust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bAllowZThrust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}

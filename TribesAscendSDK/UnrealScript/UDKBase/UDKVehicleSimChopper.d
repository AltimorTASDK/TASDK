module UnrealScript.UDKBase.UDKVehicleSimChopper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface UDKVehicleSimChopper : SVehicleSimBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKVehicleSimChopper")); }
	private static __gshared UDKVehicleSimChopper mDefaultProperties;
	@property final static UDKVehicleSimChopper DefaultProperties() { mixin(MGDPC("UDKVehicleSimChopper", "UDKVehicleSimChopper UDKBase.Default__UDKVehicleSimChopper")); }
	struct AnglePID
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKVehicleSimChopper.AnglePID")); }
		@property final auto ref
		{
			float PrevError() { mixin(MGPS("float", 16)); }
			float PrevIntegral() { mixin(MGPS("float", 12)); }
			float IGain() { mixin(MGPS("float", 8)); }
			float DGain() { mixin(MGPS("float", 4)); }
			float PGain() { mixin(MGPS("float", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			float HardLimitAirSpeedScale() { mixin(MGPC("float", 304)); }
			float StoppedBrakeTorque() { mixin(MGPC("float", 300)); }
			Vector OldVelocity() { mixin(MGPC("Vector", 288)); }
			float CurrentStabilizationMultiplier() { mixin(MGPC("float", 284)); }
			float StabilizationForceMultiplier() { mixin(MGPC("float", 280)); }
			float AccumulatedTime() { mixin(MGPC("float", 276)); }
			Vector RandTorque() { mixin(MGPC("Vector", 264)); }
			Vector RandForce() { mixin(MGPC("Vector", 252)); }
			float PitchViewCorrelation() { mixin(MGPC("float", 248)); }
			float TargetPitch() { mixin(MGPC("float", 244)); }
			float TargetHeading() { mixin(MGPC("float", 240)); }
			float StrafeTurnDamping() { mixin(MGPC("float", 236)); }
			float RandForceInterval() { mixin(MGPC("float", 228)); }
			float MaxRandForce() { mixin(MGPC("float", 224)); }
			float StopThreshold() { mixin(MGPC("float", 220)); }
			float RollDamping() { mixin(MGPC("float", 216)); }
			float RollTorqueMax() { mixin(MGPC("float", 212)); }
			float RollTorqueStrafeFactor() { mixin(MGPC("float", 208)); }
			float RollTorqueTurnFactor() { mixin(MGPC("float", 204)); }
			float PitchDamping() { mixin(MGPC("float", 200)); }
			float PitchTorqueMax() { mixin(MGPC("float", 196)); }
			float PitchTorqueFactor() { mixin(MGPC("float", 192)); }
			float MaxYawRate() { mixin(MGPC("float", 188)); }
			float TurnDamping() { mixin(MGPC("float", 184)); }
			float TurnTorqueMax() { mixin(MGPC("float", 180)); }
			float TurnTorqueFactor() { mixin(MGPC("float", 176)); }
			float UpDamping() { mixin(MGPC("float", 172)); }
			float MaxRiseForce() { mixin(MGPC("float", 168)); }
			float DirectionChangeForce() { mixin(MGPC("float", 164)); }
			float LatDamping() { mixin(MGPC("float", 160)); }
			float MaxStrafeForce() { mixin(MGPC("float", 156)); }
			float LongDamping() { mixin(MGPC("float", 152)); }
			float MaxReverseForce() { mixin(MGPC("float", 148)); }
			float MaxThrustForce() { mixin(MGPC("float", 144)); }
		}
		bool bStabilizeStops() { mixin(MGBPC(232, 0x40)); }
		bool bStabilizeStops(bool val) { mixin(MSBPC(232, 0x40)); }
		bool bHeadingInitialized() { mixin(MGBPC(232, 0x20)); }
		bool bHeadingInitialized(bool val) { mixin(MSBPC(232, 0x20)); }
		bool bStrafeAffectsTurnDamping() { mixin(MGBPC(232, 0x10)); }
		bool bStrafeAffectsTurnDamping(bool val) { mixin(MSBPC(232, 0x10)); }
		bool bRecentlyHit() { mixin(MGBPC(232, 0x8)); }
		bool bRecentlyHit(bool val) { mixin(MSBPC(232, 0x8)); }
		bool bShouldCutThrustMaxOnImpact() { mixin(MGBPC(232, 0x4)); }
		bool bShouldCutThrustMaxOnImpact(bool val) { mixin(MSBPC(232, 0x4)); }
		bool bFullThrustOnDirectionChange() { mixin(MGBPC(232, 0x2)); }
		bool bFullThrustOnDirectionChange(bool val) { mixin(MSBPC(232, 0x2)); }
		bool bAllowZThrust() { mixin(MGBPC(232, 0x1)); }
		bool bAllowZThrust(bool val) { mixin(MSBPC(232, 0x1)); }
	}
}

module UnrealScript.UDKBase.UDKVehicleSimHoverboard;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.SVehicleSimBase;

extern(C++) interface UDKVehicleSimHoverboard : SVehicleSimBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKVehicleSimHoverboard")()); }
	private static __gshared UDKVehicleSimHoverboard mDefaultProperties;
	@property final static UDKVehicleSimHoverboard DefaultProperties() { mixin(MGDPC!(UDKVehicleSimHoverboard, "UDKVehicleSimHoverboard UDKBase.Default__UDKVehicleSimHoverboard")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitWheels;
			ScriptFunction mUpdateLeanConstraint;
		}
		public @property static final
		{
			ScriptFunction InitWheels() { mixin(MGF!("mInitWheels", "Function UDKBase.UDKVehicleSimHoverboard.InitWheels")()); }
			ScriptFunction UpdateLeanConstraint() { mixin(MGF!("mUpdateLeanConstraint", "Function UDKBase.UDKVehicleSimHoverboard.UpdateLeanConstraint")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float CurrentLookYaw() { mixin(MGPC!(float, 264)()); }
			float SlalomSpeed() { mixin(MGPC!(float, 260)()); }
			float HoverboardSlalomMaxAngle() { mixin(MGPC!(float, 256)()); }
			float CurrentSteerOffset() { mixin(MGPC!(float, 252)()); }
			float LandedCountdown() { mixin(MGPC!(float, 248)()); }
			float SpinSpeed() { mixin(MGPC!(float, 244)()); }
			float AutoSpin() { mixin(MGPC!(float, 240)()); }
			float SpinHeadingOffset() { mixin(MGPC!(float, 236)()); }
			float TrickJumpWarmup() { mixin(MGPC!(float, 232)()); }
			float TakeoffYaw() { mixin(MGPC!(float, 228)()); }
			Vector GroundNormal() { mixin(MGPC!(Vector, 216)()); }
			SoundCue OverWaterSound() { mixin(MGPC!(SoundCue, 212)()); }
			float WaterCheckLevel() { mixin(MGPC!(float, 208)()); }
			float StopThreshold() { mixin(MGPC!(float, 204)()); }
			UObject.InterpCurveFloat TurnDampingSpeedFunc() { mixin(MGPC!(UObject.InterpCurveFloat, 184)()); }
			float MaxTurnTorque() { mixin(MGPC!(float, 180)()); }
			float SpinTurnTorqueScale() { mixin(MGPC!(float, 176)()); }
			float TurnTorqueFactor() { mixin(MGPC!(float, 172)()); }
			float MaxRiseForce() { mixin(MGPC!(float, 168)()); }
			float LatDamping() { mixin(MGPC!(float, 164)()); }
			float MaxStrafeForce() { mixin(MGPC!(float, 160)()); }
			float LongDamping() { mixin(MGPC!(float, 156)()); }
			float MaxReverseVelocity() { mixin(MGPC!(float, 152)()); }
			float MaxReverseForce() { mixin(MGPC!(float, 148)()); }
			float MaxThrustForce() { mixin(MGPC!(float, 144)()); }
		}
		bool bLeftGround() { mixin(MGBPC!(200, 0x4)()); }
		bool bLeftGround(bool val) { mixin(MSBPC!(200, 0x4)()); }
		bool bInAJump() { mixin(MGBPC!(200, 0x2)()); }
		bool bInAJump(bool val) { mixin(MSBPC!(200, 0x2)()); }
		bool bIsOverDeepWater() { mixin(MGBPC!(200, 0x1)()); }
		bool bIsOverDeepWater(bool val) { mixin(MSBPC!(200, 0x1)()); }
	}
final:
	void InitWheels(UDKVehicle pVehicle)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = pVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitWheels, params.ptr, cast(void*)0);
	}
	void UpdateLeanConstraint(RB_ConstraintInstance LeanUprightConstraintInstance, Vector LeanY, Vector LeanZ)
	{
		ubyte params[28];
		params[] = 0;
		*cast(RB_ConstraintInstance*)params.ptr = LeanUprightConstraintInstance;
		*cast(Vector*)&params[4] = LeanY;
		*cast(Vector*)&params[16] = LeanZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLeanConstraint, params.ptr, cast(void*)0);
	}
}

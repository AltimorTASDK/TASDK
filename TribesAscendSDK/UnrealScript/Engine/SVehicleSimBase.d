module UnrealScript.Engine.SVehicleSimBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;

extern(C++) interface SVehicleSimBase : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SVehicleSimBase")()); }
	private static __gshared SVehicleSimBase mDefaultProperties;
	@property final static SVehicleSimBase DefaultProperties() { mixin(MGDPC!(SVehicleSimBase, "SVehicleSimBase Engine.Default__SVehicleSimBase")()); }
	@property final
	{
		auto ref
		{
			float WheelLatExtremumValue() { mixin(MGPC!("float", 120)()); }
			float WheelLatExtremumSlip() { mixin(MGPC!("float", 116)()); }
			float WheelLatAsymptoteSlip() { mixin(MGPC!("float", 124)()); }
			float WheelLatAsymptoteValue() { mixin(MGPC!("float", 128)()); }
			float AutoDriveSteer() { mixin(MGPC!("float", 140)()); }
			float WheelInertia() { mixin(MGPC!("float", 132)()); }
			float WheelLongAsymptoteValue() { mixin(MGPC!("float", 112)()); }
			float WheelLongAsymptoteSlip() { mixin(MGPC!("float", 108)()); }
			float WheelLongExtremumValue() { mixin(MGPC!("float", 104)()); }
			float WheelLongExtremumSlip() { mixin(MGPC!("float", 100)()); }
			float WheelSuspensionBias() { mixin(MGPC!("float", 96)()); }
			float WheelSuspensionDamping() { mixin(MGPC!("float", 92)()); }
			float WheelSuspensionStiffness() { mixin(MGPC!("float", 88)()); }
		}
		bool bAutoDrive() { mixin(MGBPC!(136, 0x4)()); }
		bool bAutoDrive(bool val) { mixin(MSBPC!(136, 0x4)()); }
		bool bClampedFrictionModel() { mixin(MGBPC!(136, 0x2)()); }
		bool bClampedFrictionModel(bool val) { mixin(MSBPC!(136, 0x2)()); }
		bool bWheelSpeedOverride() { mixin(MGBPC!(136, 0x1)()); }
		bool bWheelSpeedOverride(bool val) { mixin(MSBPC!(136, 0x1)()); }
	}
}

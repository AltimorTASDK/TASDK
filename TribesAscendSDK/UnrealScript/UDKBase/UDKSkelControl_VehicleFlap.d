module UnrealScript.UDKBase.UDKSkelControl_VehicleFlap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_VehicleFlap : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_VehicleFlap")()); }
	private static __gshared UDKSkelControl_VehicleFlap mDefaultProperties;
	@property final static UDKSkelControl_VehicleFlap DefaultProperties() { mixin(MGDPC!(UDKSkelControl_VehicleFlap, "UDKSkelControl_VehicleFlap UDKBase.Default__UDKSkelControl_VehicleFlap")()); }
	@property final auto ref
	{
		ScriptName LeftFlapControl() { mixin(MGPC!(ScriptName, 260)()); }
		ScriptName RightFlapControl() { mixin(MGPC!(ScriptName, 252)()); }
		float MaxPitchChange() { mixin(MGPC!(float, 248)()); }
		float MaxPitchTime() { mixin(MGPC!(float, 244)()); }
		float OldZPitch() { mixin(MGPC!(float, 240)()); }
		float maxPitch() { mixin(MGPC!(float, 236)()); }
	}
}

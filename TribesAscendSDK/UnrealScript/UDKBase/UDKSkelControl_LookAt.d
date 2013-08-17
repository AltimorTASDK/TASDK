module UnrealScript.UDKBase.UDKSkelControl_LookAt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlLookAt;

extern(C++) interface UDKSkelControl_LookAt : SkelControlLookAt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_LookAt")()); }
	private static __gshared UDKSkelControl_LookAt mDefaultProperties;
	@property final static UDKSkelControl_LookAt DefaultProperties() { mixin(MGDPC!(UDKSkelControl_LookAt, "UDKSkelControl_LookAt UDKBase.Default__UDKSkelControl_LookAt")()); }
	@property final
	{
		auto ref
		{
			float RollLimit() { mixin(MGPC!("float", 332)()); }
			float PitchLimit() { mixin(MGPC!("float", 328)()); }
			float YawLimit() { mixin(MGPC!("float", 324)()); }
		}
		bool bShowPerAxisLimits() { mixin(MGBPC!(320, 0x8)()); }
		bool bShowPerAxisLimits(bool val) { mixin(MSBPC!(320, 0x8)()); }
		bool bLimitRoll() { mixin(MGBPC!(320, 0x4)()); }
		bool bLimitRoll(bool val) { mixin(MSBPC!(320, 0x4)()); }
		bool bLimitPitch() { mixin(MGBPC!(320, 0x2)()); }
		bool bLimitPitch(bool val) { mixin(MSBPC!(320, 0x2)()); }
		bool bLimitYaw() { mixin(MGBPC!(320, 0x1)()); }
		bool bLimitYaw(bool val) { mixin(MSBPC!(320, 0x1)()); }
	}
}

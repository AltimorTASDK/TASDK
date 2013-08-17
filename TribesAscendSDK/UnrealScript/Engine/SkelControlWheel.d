module UnrealScript.Engine.SkelControlWheel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface SkelControlWheel : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlWheel")()); }
	private static __gshared SkelControlWheel mDefaultProperties;
	@property final static SkelControlWheel DefaultProperties() { mixin(MGDPC!(SkelControlWheel, "SkelControlWheel Engine.Default__SkelControlWheel")()); }
	@property final
	{
		auto ref
		{
			float WheelSteering() { mixin(MGPC!(float, 252)()); }
			UObject.EAxis WheelSteeringAxis() { mixin(MGPC!(UObject.EAxis, 249)()); }
			UObject.EAxis WheelRollAxis() { mixin(MGPC!(UObject.EAxis, 248)()); }
			float WheelRoll() { mixin(MGPC!(float, 244)()); }
			float WheelMaxRenderDisplacement() { mixin(MGPC!(float, 240)()); }
			float WheelDisplacement() { mixin(MGPC!(float, 236)()); }
		}
		bool bInvertWheelSteering() { mixin(MGBPC!(256, 0x2)()); }
		bool bInvertWheelSteering(bool val) { mixin(MSBPC!(256, 0x2)()); }
		bool bInvertWheelRoll() { mixin(MGBPC!(256, 0x1)()); }
		bool bInvertWheelRoll(bool val) { mixin(MSBPC!(256, 0x1)()); }
	}
}

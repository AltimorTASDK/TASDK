module UnrealScript.Engine.DistributionFloatParameterBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DistributionFloatConstant;

extern(C++) interface DistributionFloatParameterBase : DistributionFloatConstant
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionFloatParameterBase")()); }
	private static __gshared DistributionFloatParameterBase mDefaultProperties;
	@property final static DistributionFloatParameterBase DefaultProperties() { mixin(MGDPC!(DistributionFloatParameterBase, "DistributionFloatParameterBase Engine.Default__DistributionFloatParameterBase")()); }
	enum DistributionParamMode : ubyte
	{
		DPM_Normal = 0,
		DPM_Abs = 1,
		DPM_Direct = 2,
		DPM_MAX = 3,
	}
	@property final auto ref
	{
		DistributionFloatParameterBase.DistributionParamMode ParamMode() { mixin(MGPC!("DistributionFloatParameterBase.DistributionParamMode", 108)()); }
		ScriptName ParameterName() { mixin(MGPC!("ScriptName", 84)()); }
		float MaxOutput() { mixin(MGPC!("float", 104)()); }
		float MinOutput() { mixin(MGPC!("float", 100)()); }
		float MaxInput() { mixin(MGPC!("float", 96)()); }
		float MinInput() { mixin(MGPC!("float", 92)()); }
	}
}

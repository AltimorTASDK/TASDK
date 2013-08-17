module UnrealScript.Engine.DistributionVectorParameterBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DistributionFloatParameterBase;
import UnrealScript.Engine.DistributionVectorConstant;

extern(C++) interface DistributionVectorParameterBase : DistributionVectorConstant
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionVectorParameterBase")()); }
	private static __gshared DistributionVectorParameterBase mDefaultProperties;
	@property final static DistributionVectorParameterBase DefaultProperties() { mixin(MGDPC!(DistributionVectorParameterBase, "DistributionVectorParameterBase Engine.Default__DistributionVectorParameterBase")()); }
	@property final auto ref
	{
		DistributionFloatParameterBase.DistributionParamMode ParamModes() { mixin(MGPC!(DistributionFloatParameterBase.DistributionParamMode, 156)()); }
		Vector MaxOutput() { mixin(MGPC!(Vector, 144)()); }
		Vector MinOutput() { mixin(MGPC!(Vector, 132)()); }
		Vector MaxInput() { mixin(MGPC!(Vector, 120)()); }
		Vector MinInput() { mixin(MGPC!(Vector, 108)()); }
		ScriptName ParameterName() { mixin(MGPC!(ScriptName, 100)()); }
	}
}

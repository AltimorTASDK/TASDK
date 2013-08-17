module UnrealScript.Engine.DistributionFloatUniform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface DistributionFloatUniform : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionFloatUniform")()); }
	private static __gshared DistributionFloatUniform mDefaultProperties;
	@property final static DistributionFloatUniform DefaultProperties() { mixin(MGDPC!(DistributionFloatUniform, "DistributionFloatUniform Engine.Default__DistributionFloatUniform")()); }
	@property final auto ref
	{
		float Max() { mixin(MGPC!("float", 84)()); }
		float Min() { mixin(MGPC!("float", 80)()); }
	}
}

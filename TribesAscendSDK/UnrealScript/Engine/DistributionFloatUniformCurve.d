module UnrealScript.Engine.DistributionFloatUniformCurve;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.UObject;

extern(C++) interface DistributionFloatUniformCurve : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionFloatUniformCurve")()); }
	private static __gshared DistributionFloatUniformCurve mDefaultProperties;
	@property final static DistributionFloatUniformCurve DefaultProperties() { mixin(MGDPC!(DistributionFloatUniformCurve, "DistributionFloatUniformCurve Engine.Default__DistributionFloatUniformCurve")()); }
	@property final auto ref UObject.InterpCurveVector2D ConstantCurve() { mixin(MGPC!(UObject.InterpCurveVector2D, 80)()); }
}

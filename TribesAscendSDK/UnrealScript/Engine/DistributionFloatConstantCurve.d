module UnrealScript.Engine.DistributionFloatConstantCurve;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.UObject;

extern(C++) interface DistributionFloatConstantCurve : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DistributionFloatConstantCurve")); }
	private static __gshared DistributionFloatConstantCurve mDefaultProperties;
	@property final static DistributionFloatConstantCurve DefaultProperties() { mixin(MGDPC("DistributionFloatConstantCurve", "DistributionFloatConstantCurve Engine.Default__DistributionFloatConstantCurve")); }
	@property final auto ref UObject.InterpCurveFloat ConstantCurve() { mixin(MGPC("UObject.InterpCurveFloat", 80)); }
}

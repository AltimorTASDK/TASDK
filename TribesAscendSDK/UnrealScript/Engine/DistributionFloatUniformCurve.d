module UnrealScript.Engine.DistributionFloatUniformCurve;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.UObject;

extern(C++) interface DistributionFloatUniformCurve : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatUniformCurve")); }
	private static __gshared DistributionFloatUniformCurve mDefaultProperties;
	@property final static DistributionFloatUniformCurve DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DistributionFloatUniformCurve)("DistributionFloatUniformCurve Engine.Default__DistributionFloatUniformCurve")); }
	@property final auto ref UObject.InterpCurveVector2D ConstantCurve() { return *cast(UObject.InterpCurveVector2D*)(cast(size_t)cast(void*)this + 80); }
}

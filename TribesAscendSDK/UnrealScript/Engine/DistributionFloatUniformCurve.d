module UnrealScript.Engine.DistributionFloatUniformCurve;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.UObject;

extern(C++) interface DistributionFloatUniformCurve : DistributionFloat
{
public extern(D):
	@property final auto ref UObject.InterpCurveVector2D ConstantCurve() { return *cast(UObject.InterpCurveVector2D*)(cast(size_t)cast(void*)this + 80); }
}

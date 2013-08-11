module UnrealScript.Engine.DistributionFloatConstantCurve;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.UObject;

extern(C++) interface DistributionFloatConstantCurve : DistributionFloat
{
public extern(D):
	@property final auto ref UObject.InterpCurveFloat ConstantCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 80); }
}

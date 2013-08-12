module UnrealScript.Engine.DistributionVectorConstantCurve;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorConstantCurve : DistributionVector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionVectorConstantCurve")); }
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 100); }
			UObject.InterpCurveVector ConstantCurve() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bLockAxes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bLockAxes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
}

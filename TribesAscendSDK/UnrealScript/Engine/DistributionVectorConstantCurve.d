module UnrealScript.Engine.DistributionVectorConstantCurve;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorConstantCurve : DistributionVector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DistributionVectorConstantCurve")); }
	private static __gshared DistributionVectorConstantCurve mDefaultProperties;
	@property final static DistributionVectorConstantCurve DefaultProperties() { mixin(MGDPC("DistributionVectorConstantCurve", "DistributionVectorConstantCurve Engine.Default__DistributionVectorConstantCurve")); }
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { mixin(MGPC("DistributionVector.EDistributionVectorLockFlags", 100)); }
			UObject.InterpCurveVector ConstantCurve() { mixin(MGPC("UObject.InterpCurveVector", 80)); }
		}
		bool bLockAxes() { mixin(MGBPC(96, 0x1)); }
		bool bLockAxes(bool val) { mixin(MSBPC(96, 0x1)); }
	}
}

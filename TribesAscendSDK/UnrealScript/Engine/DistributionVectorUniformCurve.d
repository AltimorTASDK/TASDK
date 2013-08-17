module UnrealScript.Engine.DistributionVectorUniformCurve;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorUniformCurve : DistributionVector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DistributionVectorUniformCurve")); }
	private static __gshared DistributionVectorUniformCurve mDefaultProperties;
	@property final static DistributionVectorUniformCurve DefaultProperties() { mixin(MGDPC("DistributionVectorUniformCurve", "DistributionVectorUniformCurve Engine.Default__DistributionVectorUniformCurve")); }
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorMirrorFlags MirrorFlags() { mixin(MGPC("DistributionVector.EDistributionVectorMirrorFlags", 102)); }
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { mixin(MGPC("DistributionVector.EDistributionVectorLockFlags", 100)); }
			UObject.InterpCurveTwoVectors ConstantCurve() { mixin(MGPC("UObject.InterpCurveTwoVectors", 80)); }
		}
		bool bUseExtremes() { mixin(MGBPC(96, 0x4)); }
		bool bUseExtremes(bool val) { mixin(MSBPC(96, 0x4)); }
		bool bLockAxes2() { mixin(MGBPC(96, 0x2)); }
		bool bLockAxes2(bool val) { mixin(MSBPC(96, 0x2)); }
		bool bLockAxes1() { mixin(MGBPC(96, 0x1)); }
		bool bLockAxes1(bool val) { mixin(MSBPC(96, 0x1)); }
	}
}

module UnrealScript.Engine.DistributionVectorUniform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorUniform : DistributionVector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionVectorUniform")()); }
	private static __gshared DistributionVectorUniform mDefaultProperties;
	@property final static DistributionVectorUniform DefaultProperties() { mixin(MGDPC!(DistributionVectorUniform, "DistributionVectorUniform Engine.Default__DistributionVectorUniform")()); }
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorMirrorFlags MirrorFlags() { mixin(MGPC!("DistributionVector.EDistributionVectorMirrorFlags", 109)()); }
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { mixin(MGPC!("DistributionVector.EDistributionVectorLockFlags", 108)()); }
			Vector Min() { mixin(MGPC!("Vector", 92)()); }
			Vector Max() { mixin(MGPC!("Vector", 80)()); }
		}
		bool bUseExtremes() { mixin(MGBPC!(104, 0x2)()); }
		bool bUseExtremes(bool val) { mixin(MSBPC!(104, 0x2)()); }
		bool bLockAxes() { mixin(MGBPC!(104, 0x1)()); }
		bool bLockAxes(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
}

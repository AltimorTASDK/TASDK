module UnrealScript.Engine.DistributionVectorConstant;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorConstant : DistributionVector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DistributionVectorConstant")()); }
	private static __gshared DistributionVectorConstant mDefaultProperties;
	@property final static DistributionVectorConstant DefaultProperties() { mixin(MGDPC!(DistributionVectorConstant, "DistributionVectorConstant Engine.Default__DistributionVectorConstant")()); }
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { mixin(MGPC!("DistributionVector.EDistributionVectorLockFlags", 96)()); }
			Vector Constant() { mixin(MGPC!("Vector", 80)()); }
		}
		bool bLockAxes() { mixin(MGBPC!(92, 0x1)()); }
		bool bLockAxes(bool val) { mixin(MSBPC!(92, 0x1)()); }
	}
}

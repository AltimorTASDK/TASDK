module UnrealScript.Engine.MantleReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface MantleReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MantleReachSpec")()); }
	private static __gshared MantleReachSpec mDefaultProperties;
	@property final static MantleReachSpec DefaultProperties() { mixin(MGDPC!(MantleReachSpec, "MantleReachSpec Engine.Default__MantleReachSpec")()); }
	@property final
	{
		bool bClimbUp() { mixin(MGBPC!(144, 0x1)()); }
		bool bClimbUp(bool val) { mixin(MSBPC!(144, 0x1)()); }
	}
}

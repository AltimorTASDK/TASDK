module UnrealScript.Engine.ForcedReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface ForcedReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ForcedReachSpec")()); }
	private static __gshared ForcedReachSpec mDefaultProperties;
	@property final static ForcedReachSpec DefaultProperties() { mixin(MGDPC!(ForcedReachSpec, "ForcedReachSpec Engine.Default__ForcedReachSpec")()); }
}

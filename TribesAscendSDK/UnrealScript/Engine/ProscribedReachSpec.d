module UnrealScript.Engine.ProscribedReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface ProscribedReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ProscribedReachSpec")()); }
	private static __gshared ProscribedReachSpec mDefaultProperties;
	@property final static ProscribedReachSpec DefaultProperties() { mixin(MGDPC!(ProscribedReachSpec, "ProscribedReachSpec Engine.Default__ProscribedReachSpec")()); }
}

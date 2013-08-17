module UnrealScript.Engine.TeleportReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface TeleportReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TeleportReachSpec")()); }
	private static __gshared TeleportReachSpec mDefaultProperties;
	@property final static TeleportReachSpec DefaultProperties() { mixin(MGDPC!(TeleportReachSpec, "TeleportReachSpec Engine.Default__TeleportReachSpec")()); }
}

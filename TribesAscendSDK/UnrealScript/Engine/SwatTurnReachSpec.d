module UnrealScript.Engine.SwatTurnReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface SwatTurnReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SwatTurnReachSpec")()); }
	private static __gshared SwatTurnReachSpec mDefaultProperties;
	@property final static SwatTurnReachSpec DefaultProperties() { mixin(MGDPC!(SwatTurnReachSpec, "SwatTurnReachSpec Engine.Default__SwatTurnReachSpec")()); }
	@property final auto ref ubyte SpecDirection() { mixin(MGPC!("ubyte", 144)()); }
}

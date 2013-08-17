module UnrealScript.Engine.LadderReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface LadderReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LadderReachSpec")); }
	private static __gshared LadderReachSpec mDefaultProperties;
	@property final static LadderReachSpec DefaultProperties() { mixin(MGDPC("LadderReachSpec", "LadderReachSpec Engine.Default__LadderReachSpec")); }
}

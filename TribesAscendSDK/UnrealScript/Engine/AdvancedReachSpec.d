module UnrealScript.Engine.AdvancedReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface AdvancedReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AdvancedReachSpec")); }
	private static __gshared AdvancedReachSpec mDefaultProperties;
	@property final static AdvancedReachSpec DefaultProperties() { mixin(MGDPC("AdvancedReachSpec", "AdvancedReachSpec Engine.Default__AdvancedReachSpec")); }
}

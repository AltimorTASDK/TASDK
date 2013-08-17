module UnrealScript.Engine.CeilingReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface CeilingReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CeilingReachSpec")); }
	private static __gshared CeilingReachSpec mDefaultProperties;
	@property final static CeilingReachSpec DefaultProperties() { mixin(MGDPC("CeilingReachSpec", "CeilingReachSpec Engine.Default__CeilingReachSpec")); }
}

module UnrealScript.Engine.FloorToCeilingReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface FloorToCeilingReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FloorToCeilingReachSpec")); }
	private static __gshared FloorToCeilingReachSpec mDefaultProperties;
	@property final static FloorToCeilingReachSpec DefaultProperties() { mixin(MGDPC("FloorToCeilingReachSpec", "FloorToCeilingReachSpec Engine.Default__FloorToCeilingReachSpec")); }
}

module UnrealScript.Engine.WallTransReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface WallTransReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WallTransReachSpec")()); }
	private static __gshared WallTransReachSpec mDefaultProperties;
	@property final static WallTransReachSpec DefaultProperties() { mixin(MGDPC!(WallTransReachSpec, "WallTransReachSpec Engine.Default__WallTransReachSpec")()); }
}

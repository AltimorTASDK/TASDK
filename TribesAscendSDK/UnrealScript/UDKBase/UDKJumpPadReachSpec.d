module UnrealScript.UDKBase.UDKJumpPadReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKTrajectoryReachSpec;

extern(C++) interface UDKJumpPadReachSpec : UDKTrajectoryReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKJumpPadReachSpec")); }
	private static __gshared UDKJumpPadReachSpec mDefaultProperties;
	@property final static UDKJumpPadReachSpec DefaultProperties() { mixin(MGDPC("UDKJumpPadReachSpec", "UDKJumpPadReachSpec UDKBase.Default__UDKJumpPadReachSpec")); }
}

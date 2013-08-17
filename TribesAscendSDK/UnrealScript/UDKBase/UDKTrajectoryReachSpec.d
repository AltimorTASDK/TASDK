module UnrealScript.UDKBase.UDKTrajectoryReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AdvancedReachSpec;

extern(C++) interface UDKTrajectoryReachSpec : AdvancedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKTrajectoryReachSpec")()); }
	private static __gshared UDKTrajectoryReachSpec mDefaultProperties;
	@property final static UDKTrajectoryReachSpec DefaultProperties() { mixin(MGDPC!(UDKTrajectoryReachSpec, "UDKTrajectoryReachSpec UDKBase.Default__UDKTrajectoryReachSpec")()); }
}

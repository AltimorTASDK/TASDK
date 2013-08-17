module UnrealScript.UTGame.UTTrajectoryReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKTrajectoryReachSpec;

extern(C++) interface UTTrajectoryReachSpec : UDKTrajectoryReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTrajectoryReachSpec")()); }
	private static __gshared UTTrajectoryReachSpec mDefaultProperties;
	@property final static UTTrajectoryReachSpec DefaultProperties() { mixin(MGDPC!(UTTrajectoryReachSpec, "UTTrajectoryReachSpec UTGame.Default__UTTrajectoryReachSpec")()); }
}

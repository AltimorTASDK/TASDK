module UnrealScript.UTGame.UTTrajectoryReachSpec;

import ScriptClasses;
import UnrealScript.UDKBase.UDKTrajectoryReachSpec;

extern(C++) interface UTTrajectoryReachSpec : UDKTrajectoryReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTrajectoryReachSpec")); }
	private static __gshared UTTrajectoryReachSpec mDefaultProperties;
	@property final static UTTrajectoryReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTrajectoryReachSpec)("UTTrajectoryReachSpec UTGame.Default__UTTrajectoryReachSpec")); }
}

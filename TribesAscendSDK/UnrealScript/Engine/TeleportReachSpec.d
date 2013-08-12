module UnrealScript.Engine.TeleportReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface TeleportReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TeleportReachSpec")); }
	private static __gshared TeleportReachSpec mDefaultProperties;
	@property final static TeleportReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TeleportReachSpec)("TeleportReachSpec Engine.Default__TeleportReachSpec")); }
}

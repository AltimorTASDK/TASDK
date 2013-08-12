module UnrealScript.Engine.LadderReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface LadderReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LadderReachSpec")); }
	private static __gshared LadderReachSpec mDefaultProperties;
	@property final static LadderReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LadderReachSpec)("LadderReachSpec Engine.Default__LadderReachSpec")); }
}

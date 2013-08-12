module UnrealScript.Engine.AdvancedReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface AdvancedReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AdvancedReachSpec")); }
	private static __gshared AdvancedReachSpec mDefaultProperties;
	@property final static AdvancedReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AdvancedReachSpec)("AdvancedReachSpec Engine.Default__AdvancedReachSpec")); }
}

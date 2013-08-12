module UnrealScript.Engine.CeilingReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface CeilingReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CeilingReachSpec")); }
	private static __gshared CeilingReachSpec mDefaultProperties;
	@property final static CeilingReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CeilingReachSpec)("CeilingReachSpec Engine.Default__CeilingReachSpec")); }
}

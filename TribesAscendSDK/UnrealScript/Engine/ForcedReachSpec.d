module UnrealScript.Engine.ForcedReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface ForcedReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ForcedReachSpec")); }
	private static __gshared ForcedReachSpec mDefaultProperties;
	@property final static ForcedReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ForcedReachSpec)("ForcedReachSpec Engine.Default__ForcedReachSpec")); }
}

module UnrealScript.Engine.ProscribedReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ReachSpec;

extern(C++) interface ProscribedReachSpec : ReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ProscribedReachSpec")); }
	private static __gshared ProscribedReachSpec mDefaultProperties;
	@property final static ProscribedReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ProscribedReachSpec)("ProscribedReachSpec Engine.Default__ProscribedReachSpec")); }
}

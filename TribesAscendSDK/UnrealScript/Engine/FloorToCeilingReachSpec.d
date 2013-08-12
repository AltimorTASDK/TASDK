module UnrealScript.Engine.FloorToCeilingReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface FloorToCeilingReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FloorToCeilingReachSpec")); }
	private static __gshared FloorToCeilingReachSpec mDefaultProperties;
	@property final static FloorToCeilingReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FloorToCeilingReachSpec)("FloorToCeilingReachSpec Engine.Default__FloorToCeilingReachSpec")); }
}

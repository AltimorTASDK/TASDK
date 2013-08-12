module UnrealScript.Engine.K2Node_ForLoop;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_ForLoop : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_ForLoop")); }
	private static __gshared K2Node_ForLoop mDefaultProperties;
	@property final static K2Node_ForLoop DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Node_ForLoop)("K2Node_ForLoop Engine.Default__K2Node_ForLoop")); }
}

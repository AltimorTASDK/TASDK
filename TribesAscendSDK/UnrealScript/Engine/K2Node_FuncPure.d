module UnrealScript.Engine.K2Node_FuncPure;

import ScriptClasses;
import UnrealScript.Engine.K2Node_FuncBase;

extern(C++) interface K2Node_FuncPure : K2Node_FuncBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_FuncPure")); }
	private static __gshared K2Node_FuncPure mDefaultProperties;
	@property final static K2Node_FuncPure DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Node_FuncPure)("K2Node_FuncPure Engine.Default__K2Node_FuncPure")); }
}

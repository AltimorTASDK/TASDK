module UnrealScript.Engine.K2Node_FuncBase;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Code;
import UnrealScript.Core.Function;

extern(C++) interface K2Node_FuncBase : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_FuncBase")); }
	private static __gshared K2Node_FuncBase mDefaultProperties;
	@property final static K2Node_FuncBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Node_FuncBase)("K2Node_FuncBase Engine.Default__K2Node_FuncBase")); }
	// WARNING: Property 'Function' has the same name as a defined type!
}

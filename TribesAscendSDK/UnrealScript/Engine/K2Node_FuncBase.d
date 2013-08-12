module UnrealScript.Engine.K2Node_FuncBase;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Code;
import UnrealScript.Core.Function;

extern(C++) interface K2Node_FuncBase : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_FuncBase")); }
	// WARNING: Property 'Function' has the same name as a defined type!
}

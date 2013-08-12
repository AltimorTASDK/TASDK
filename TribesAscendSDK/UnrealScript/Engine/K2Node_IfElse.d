module UnrealScript.Engine.K2Node_IfElse;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_IfElse : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_IfElse")); }
}

module UnrealScript.Engine.K2Node_Func_NewComp;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Func;

extern(C++) interface K2Node_Func_NewComp : K2Node_Func
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_Func_NewComp")); }
}

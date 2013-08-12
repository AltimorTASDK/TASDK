module UnrealScript.Engine.K2Node_IfElse;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_IfElse : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_IfElse")); }
	private static __gshared K2Node_IfElse mDefaultProperties;
	@property final static K2Node_IfElse DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Node_IfElse)("K2Node_IfElse Engine.Default__K2Node_IfElse")); }
}

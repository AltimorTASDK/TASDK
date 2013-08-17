module UnrealScript.Engine.K2Node_IfElse;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_IfElse : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Node_IfElse")()); }
	private static __gshared K2Node_IfElse mDefaultProperties;
	@property final static K2Node_IfElse DefaultProperties() { mixin(MGDPC!(K2Node_IfElse, "K2Node_IfElse Engine.Default__K2Node_IfElse")()); }
}

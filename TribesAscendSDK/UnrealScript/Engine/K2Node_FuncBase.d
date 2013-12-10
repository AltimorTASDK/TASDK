module UnrealScript.Engine.K2Node_FuncBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Node_Code;
import UnrealScript.Core.Function;

extern(C++) interface K2Node_FuncBase : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Node_FuncBase")); }
	private static __gshared K2Node_FuncBase mDefaultProperties;
	@property final static K2Node_FuncBase DefaultProperties() { mixin(MGDPC("K2Node_FuncBase", "K2Node_FuncBase Engine.Default__K2Node_FuncBase")); }
	@property final auto ref Function FunctionVar() { mixin(MGPC("Function", 92)); }
}

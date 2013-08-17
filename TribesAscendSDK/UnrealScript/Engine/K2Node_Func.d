module UnrealScript.Engine.K2Node_Func;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Node_FuncBase;

extern(C++) interface K2Node_Func : K2Node_FuncBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Node_Func")); }
	private static __gshared K2Node_Func mDefaultProperties;
	@property final static K2Node_Func DefaultProperties() { mixin(MGDPC("K2Node_Func", "K2Node_Func Engine.Default__K2Node_Func")); }
}

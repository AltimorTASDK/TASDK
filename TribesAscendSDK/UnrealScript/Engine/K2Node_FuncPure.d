module UnrealScript.Engine.K2Node_FuncPure;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Node_FuncBase;

extern(C++) interface K2Node_FuncPure : K2Node_FuncBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Node_FuncPure")); }
	private static __gshared K2Node_FuncPure mDefaultProperties;
	@property final static K2Node_FuncPure DefaultProperties() { mixin(MGDPC("K2Node_FuncPure", "K2Node_FuncPure Engine.Default__K2Node_FuncPure")); }
}

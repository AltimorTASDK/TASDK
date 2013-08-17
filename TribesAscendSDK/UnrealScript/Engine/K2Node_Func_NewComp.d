module UnrealScript.Engine.K2Node_Func_NewComp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Node_Func;

extern(C++) interface K2Node_Func_NewComp : K2Node_Func
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Node_Func_NewComp")); }
	private static __gshared K2Node_Func_NewComp mDefaultProperties;
	@property final static K2Node_Func_NewComp DefaultProperties() { mixin(MGDPC("K2Node_Func_NewComp", "K2Node_Func_NewComp Engine.Default__K2Node_Func_NewComp")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ComponentTemplate'!
}

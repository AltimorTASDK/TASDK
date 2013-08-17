module UnrealScript.Engine.K2Node_Code;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface K2Node_Code : K2NodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Node_Code")); }
	private static __gshared K2Node_Code mDefaultProperties;
	@property final static K2Node_Code DefaultProperties() { mixin(MGDPC("K2Node_Code", "K2Node_Code Engine.Default__K2Node_Code")); }
}

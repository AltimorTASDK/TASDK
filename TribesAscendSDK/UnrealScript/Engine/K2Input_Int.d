module UnrealScript.Engine.K2Input_Int;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Int : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Input_Int")); }
	private static __gshared K2Input_Int mDefaultProperties;
	@property final static K2Input_Int DefaultProperties() { mixin(MGDPC("K2Input_Int", "K2Input_Int Engine.Default__K2Input_Int")); }
	@property final auto ref int DefaultInt() { mixin(MGPC("int", 84)); }
}

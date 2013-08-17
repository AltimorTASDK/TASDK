module UnrealScript.Engine.K2Input_Float;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Float : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Input_Float")()); }
	private static __gshared K2Input_Float mDefaultProperties;
	@property final static K2Input_Float DefaultProperties() { mixin(MGDPC!(K2Input_Float, "K2Input_Float Engine.Default__K2Input_Float")()); }
	@property final auto ref float DefaultFloat() { mixin(MGPC!(float, 84)()); }
}

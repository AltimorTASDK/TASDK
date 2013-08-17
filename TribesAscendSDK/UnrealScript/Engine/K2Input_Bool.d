module UnrealScript.Engine.K2Input_Bool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Bool : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Input_Bool")); }
	private static __gshared K2Input_Bool mDefaultProperties;
	@property final static K2Input_Bool DefaultProperties() { mixin(MGDPC("K2Input_Bool", "K2Input_Bool Engine.Default__K2Input_Bool")); }
	@property final
	{
		bool bDefaultBool() { mixin(MGBPC(84, 0x1)); }
		bool bDefaultBool(bool val) { mixin(MSBPC(84, 0x1)); }
	}
}

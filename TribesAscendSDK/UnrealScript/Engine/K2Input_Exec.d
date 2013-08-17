module UnrealScript.Engine.K2Input_Exec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Exec : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Input_Exec")); }
	private static __gshared K2Input_Exec mDefaultProperties;
	@property final static K2Input_Exec DefaultProperties() { mixin(MGDPC("K2Input_Exec", "K2Input_Exec Engine.Default__K2Input_Exec")); }
}

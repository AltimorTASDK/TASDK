module UnrealScript.Engine.K2Input_Vector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Vector : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Input_Vector")); }
	private static __gshared K2Input_Vector mDefaultProperties;
	@property final static K2Input_Vector DefaultProperties() { mixin(MGDPC("K2Input_Vector", "K2Input_Vector Engine.Default__K2Input_Vector")); }
	@property final auto ref Vector DefaultVector() { mixin(MGPC("Vector", 84)); }
}

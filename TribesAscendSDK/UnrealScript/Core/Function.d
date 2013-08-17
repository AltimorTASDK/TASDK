module UnrealScript.Core.Function;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Struct;

extern(C++) interface Function : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Function")); }
	private static __gshared Function mDefaultProperties;
	@property final static Function DefaultProperties() { mixin(MGDPC("Function", "Function Core.Default__Function")); }
}

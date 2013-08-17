module UnrealScript.Core.Linker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Linker : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Linker")); }
	private static __gshared Linker mDefaultProperties;
	@property final static Linker DefaultProperties() { mixin(MGDPC("Linker", "Linker Core.Default__Linker")); }
}

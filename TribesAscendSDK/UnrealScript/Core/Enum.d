module UnrealScript.Core.Enum;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Field;

extern(C++) interface Enum : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Enum")); }
	private static __gshared Enum mDefaultProperties;
	@property final static Enum DefaultProperties() { mixin(MGDPC("Enum", "Enum Core.Default__Enum")); }
}

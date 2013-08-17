module UnrealScript.Core.Struct;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Field;

extern(C++) interface Struct : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.Struct")); }
	private static __gshared Struct mDefaultProperties;
	@property final static Struct DefaultProperties() { mixin(MGDPC("Struct", "Struct Core.Default__Struct")); }
}

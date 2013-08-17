module UnrealScript.Core.StrProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface StrProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.StrProperty")); }
	private static __gshared StrProperty mDefaultProperties;
	@property final static StrProperty DefaultProperties() { mixin(MGDPC("StrProperty", "StrProperty Core.Default__StrProperty")); }
}

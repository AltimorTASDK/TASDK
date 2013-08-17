module UnrealScript.Core.StructProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface StructProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.StructProperty")); }
	private static __gshared StructProperty mDefaultProperties;
	@property final static StructProperty DefaultProperties() { mixin(MGDPC("StructProperty", "StructProperty Core.Default__StructProperty")); }
}

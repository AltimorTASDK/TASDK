module UnrealScript.Core.Property;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Field;

extern(C++) interface Property : Field
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Property")()); }
	private static __gshared Property mDefaultProperties;
	@property final static Property DefaultProperties() { mixin(MGDPC!(Property, "Property Core.Default__Property")()); }
}

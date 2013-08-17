module UnrealScript.Core.InterfaceProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface InterfaceProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.InterfaceProperty")); }
	private static __gshared InterfaceProperty mDefaultProperties;
	@property final static InterfaceProperty DefaultProperties() { mixin(MGDPC("InterfaceProperty", "InterfaceProperty Core.Default__InterfaceProperty")); }
}

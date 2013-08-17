module UnrealScript.Core.IntProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface IntProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.IntProperty")); }
	private static __gshared IntProperty mDefaultProperties;
	@property final static IntProperty DefaultProperties() { mixin(MGDPC("IntProperty", "IntProperty Core.Default__IntProperty")); }
}

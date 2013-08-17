module UnrealScript.Core.FloatProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface FloatProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.FloatProperty")); }
	private static __gshared FloatProperty mDefaultProperties;
	@property final static FloatProperty DefaultProperties() { mixin(MGDPC("FloatProperty", "FloatProperty Core.Default__FloatProperty")); }
}

module UnrealScript.Core.MapProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface MapProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.MapProperty")()); }
	private static __gshared MapProperty mDefaultProperties;
	@property final static MapProperty DefaultProperties() { mixin(MGDPC!(MapProperty, "MapProperty Core.Default__MapProperty")()); }
}

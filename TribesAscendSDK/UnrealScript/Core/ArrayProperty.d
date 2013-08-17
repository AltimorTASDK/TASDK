module UnrealScript.Core.ArrayProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface ArrayProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ArrayProperty")()); }
	private static __gshared ArrayProperty mDefaultProperties;
	@property final static ArrayProperty DefaultProperties() { mixin(MGDPC!(ArrayProperty, "ArrayProperty Core.Default__ArrayProperty")()); }
}

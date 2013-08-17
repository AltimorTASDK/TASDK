module UnrealScript.Core.ObjectProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface ObjectProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ObjectProperty")()); }
	private static __gshared ObjectProperty mDefaultProperties;
	@property final static ObjectProperty DefaultProperties() { mixin(MGDPC!(ObjectProperty, "ObjectProperty Core.Default__ObjectProperty")()); }
}

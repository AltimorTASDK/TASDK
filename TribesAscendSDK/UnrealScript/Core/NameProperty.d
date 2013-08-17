module UnrealScript.Core.NameProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface NameProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.NameProperty")()); }
	private static __gshared NameProperty mDefaultProperties;
	@property final static NameProperty DefaultProperties() { mixin(MGDPC!(NameProperty, "NameProperty Core.Default__NameProperty")()); }
}

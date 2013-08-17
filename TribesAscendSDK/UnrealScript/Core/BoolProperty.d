module UnrealScript.Core.BoolProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface BoolProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.BoolProperty")()); }
	private static __gshared BoolProperty mDefaultProperties;
	@property final static BoolProperty DefaultProperties() { mixin(MGDPC!(BoolProperty, "BoolProperty Core.Default__BoolProperty")()); }
}

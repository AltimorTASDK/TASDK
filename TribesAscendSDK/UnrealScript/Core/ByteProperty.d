module UnrealScript.Core.ByteProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface ByteProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ByteProperty")()); }
	private static __gshared ByteProperty mDefaultProperties;
	@property final static ByteProperty DefaultProperties() { mixin(MGDPC!(ByteProperty, "ByteProperty Core.Default__ByteProperty")()); }
}

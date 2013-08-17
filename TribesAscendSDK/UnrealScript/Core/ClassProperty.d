module UnrealScript.Core.ClassProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.ObjectProperty;

extern(C++) interface ClassProperty : ObjectProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ClassProperty")()); }
	private static __gshared ClassProperty mDefaultProperties;
	@property final static ClassProperty DefaultProperties() { mixin(MGDPC!(ClassProperty, "ClassProperty Core.Default__ClassProperty")()); }
}

module UnrealScript.Core.ComponentProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.ObjectProperty;

extern(C++) interface ComponentProperty : ObjectProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ComponentProperty")()); }
	private static __gshared ComponentProperty mDefaultProperties;
	@property final static ComponentProperty DefaultProperties() { mixin(MGDPC!(ComponentProperty, "ComponentProperty Core.Default__ComponentProperty")()); }
}

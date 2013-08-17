module UnrealScript.Core.Field;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Field : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Field")()); }
	private static __gshared Field mDefaultProperties;
	@property final static Field DefaultProperties() { mixin(MGDPC!(Field, "Field Core.Default__Field")()); }
}

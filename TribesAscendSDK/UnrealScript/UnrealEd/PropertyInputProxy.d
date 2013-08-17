module UnrealScript.UnrealEd.PropertyInputProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PropertyInputProxy : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PropertyInputProxy")()); }
	private static __gshared PropertyInputProxy mDefaultProperties;
	@property final static PropertyInputProxy DefaultProperties() { mixin(MGDPC!(PropertyInputProxy, "PropertyInputProxy UnrealEd.Default__PropertyInputProxy")()); }
}

module UnrealScript.UnrealEd.PropertyInputBool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputBool : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PropertyInputBool")()); }
	private static __gshared PropertyInputBool mDefaultProperties;
	@property final static PropertyInputBool DefaultProperties() { mixin(MGDPC!(PropertyInputBool, "PropertyInputBool UnrealEd.Default__PropertyInputBool")()); }
}

module UnrealScript.UnrealEd.PropertyInputArrayItemBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PropertyInputProxy;

extern(C++) interface PropertyInputArrayItemBase : PropertyInputProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PropertyInputArrayItemBase")()); }
	private static __gshared PropertyInputArrayItemBase mDefaultProperties;
	@property final static PropertyInputArrayItemBase DefaultProperties() { mixin(MGDPC!(PropertyInputArrayItemBase, "PropertyInputArrayItemBase UnrealEd.Default__PropertyInputArrayItemBase")()); }
}

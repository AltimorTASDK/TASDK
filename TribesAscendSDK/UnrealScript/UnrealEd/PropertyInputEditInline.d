module UnrealScript.UnrealEd.PropertyInputEditInline;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputEditInline : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PropertyInputEditInline")()); }
	private static __gshared PropertyInputEditInline mDefaultProperties;
	@property final static PropertyInputEditInline DefaultProperties() { mixin(MGDPC!(PropertyInputEditInline, "PropertyInputEditInline UnrealEd.Default__PropertyInputEditInline")()); }
}

module UnrealScript.UnrealEd.PropertyInputText;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputText : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PropertyInputText")); }
	private static __gshared PropertyInputText mDefaultProperties;
	@property final static PropertyInputText DefaultProperties() { mixin(MGDPC("PropertyInputText", "PropertyInputText UnrealEd.Default__PropertyInputText")); }
}

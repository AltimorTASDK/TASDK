module UnrealScript.UnrealEd.PropertyInputCombo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputCombo : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.PropertyInputCombo")); }
	private static __gshared PropertyInputCombo mDefaultProperties;
	@property final static PropertyInputCombo DefaultProperties() { mixin(MGDPC("PropertyInputCombo", "PropertyInputCombo UnrealEd.Default__PropertyInputCombo")); }
}

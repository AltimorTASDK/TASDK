module UnrealScript.UnrealEd.GeomModifier_Edit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier;

extern(C++) interface GeomModifier_Edit : GeomModifier
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GeomModifier_Edit")); }
	private static __gshared GeomModifier_Edit mDefaultProperties;
	@property final static GeomModifier_Edit DefaultProperties() { mixin(MGDPC("GeomModifier_Edit", "GeomModifier_Edit UnrealEd.Default__GeomModifier_Edit")); }
}

module UnrealScript.UnrealEd.GeomModifier_Flip;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Flip : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GeomModifier_Flip")); }
	private static __gshared GeomModifier_Flip mDefaultProperties;
	@property final static GeomModifier_Flip DefaultProperties() { mixin(MGDPC("GeomModifier_Flip", "GeomModifier_Flip UnrealEd.Default__GeomModifier_Flip")); }
}

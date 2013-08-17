module UnrealScript.UnrealEd.GeomModifier_Clip;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Clip : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GeomModifier_Clip")); }
	private static __gshared GeomModifier_Clip mDefaultProperties;
	@property final static GeomModifier_Clip DefaultProperties() { mixin(MGDPC("GeomModifier_Clip", "GeomModifier_Clip UnrealEd.Default__GeomModifier_Clip")); }
}

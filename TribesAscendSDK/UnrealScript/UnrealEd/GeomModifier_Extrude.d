module UnrealScript.UnrealEd.GeomModifier_Extrude;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Extrude : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GeomModifier_Extrude")()); }
	private static __gshared GeomModifier_Extrude mDefaultProperties;
	@property final static GeomModifier_Extrude DefaultProperties() { mixin(MGDPC!(GeomModifier_Extrude, "GeomModifier_Extrude UnrealEd.Default__GeomModifier_Extrude")()); }
}

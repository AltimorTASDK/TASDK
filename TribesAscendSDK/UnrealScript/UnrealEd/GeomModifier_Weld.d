module UnrealScript.UnrealEd.GeomModifier_Weld;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Weld : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GeomModifier_Weld")()); }
	private static __gshared GeomModifier_Weld mDefaultProperties;
	@property final static GeomModifier_Weld DefaultProperties() { mixin(MGDPC!(GeomModifier_Weld, "GeomModifier_Weld UnrealEd.Default__GeomModifier_Weld")()); }
}

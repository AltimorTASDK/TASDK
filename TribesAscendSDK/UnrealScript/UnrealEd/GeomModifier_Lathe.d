module UnrealScript.UnrealEd.GeomModifier_Lathe;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Lathe : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GeomModifier_Lathe")()); }
	private static __gshared GeomModifier_Lathe mDefaultProperties;
	@property final static GeomModifier_Lathe DefaultProperties() { mixin(MGDPC!(GeomModifier_Lathe, "GeomModifier_Lathe UnrealEd.Default__GeomModifier_Lathe")()); }
}

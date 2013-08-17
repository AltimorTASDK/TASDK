module UnrealScript.UnrealEd.GeomModifier_Create;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Create : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GeomModifier_Create")()); }
	private static __gshared GeomModifier_Create mDefaultProperties;
	@property final static GeomModifier_Create DefaultProperties() { mixin(MGDPC!(GeomModifier_Create, "GeomModifier_Create UnrealEd.Default__GeomModifier_Create")()); }
}

module UnrealScript.UnrealEd.GeomModifier_Pen;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Pen : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GeomModifier_Pen")()); }
	private static __gshared GeomModifier_Pen mDefaultProperties;
	@property final static GeomModifier_Pen DefaultProperties() { mixin(MGDPC!(GeomModifier_Pen, "GeomModifier_Pen UnrealEd.Default__GeomModifier_Pen")()); }
}

module UnrealScript.UnrealEd.GeomModifier_Extrude;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Extrude : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Extrude")); }
	private static __gshared GeomModifier_Extrude mDefaultProperties;
	@property final static GeomModifier_Extrude DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Extrude)("GeomModifier_Extrude UnrealEd.Default__GeomModifier_Extrude")); }
}

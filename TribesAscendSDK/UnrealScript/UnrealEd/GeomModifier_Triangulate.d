module UnrealScript.UnrealEd.GeomModifier_Triangulate;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Triangulate : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Triangulate")); }
	private static __gshared GeomModifier_Triangulate mDefaultProperties;
	@property final static GeomModifier_Triangulate DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Triangulate)("GeomModifier_Triangulate UnrealEd.Default__GeomModifier_Triangulate")); }
}

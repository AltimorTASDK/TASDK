module UnrealScript.UnrealEd.GeomModifier_Triangulate;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Triangulate : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Triangulate")); }
}

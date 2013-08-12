module UnrealScript.UnrealEd.GeomModifier_Delete;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Delete : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Delete")); }
}

module UnrealScript.UnrealEd.GeomModifier_Edit;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier;

extern(C++) interface GeomModifier_Edit : GeomModifier
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Edit")); }
}

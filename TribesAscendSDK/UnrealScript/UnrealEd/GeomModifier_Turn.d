module UnrealScript.UnrealEd.GeomModifier_Turn;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Turn : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Turn")); }
	private static __gshared GeomModifier_Turn mDefaultProperties;
	@property final static GeomModifier_Turn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Turn)("GeomModifier_Turn UnrealEd.Default__GeomModifier_Turn")); }
}

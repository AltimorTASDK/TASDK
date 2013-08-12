module UnrealScript.UnrealEd.GeomModifier_Flip;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Flip : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Flip")); }
	private static __gshared GeomModifier_Flip mDefaultProperties;
	@property final static GeomModifier_Flip DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Flip)("GeomModifier_Flip UnrealEd.Default__GeomModifier_Flip")); }
}

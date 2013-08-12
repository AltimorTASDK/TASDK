module UnrealScript.UnrealEd.GeomModifier_Clip;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Clip : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Clip")); }
	private static __gshared GeomModifier_Clip mDefaultProperties;
	@property final static GeomModifier_Clip DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Clip)("GeomModifier_Clip UnrealEd.Default__GeomModifier_Clip")); }
}

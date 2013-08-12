module UnrealScript.UnrealEd.GeomModifier_Split;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Split : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Split")); }
	private static __gshared GeomModifier_Split mDefaultProperties;
	@property final static GeomModifier_Split DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Split)("GeomModifier_Split UnrealEd.Default__GeomModifier_Split")); }
}

module UnrealScript.UnrealEd.GeomModifier_Weld;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Weld : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Weld")); }
	private static __gshared GeomModifier_Weld mDefaultProperties;
	@property final static GeomModifier_Weld DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Weld)("GeomModifier_Weld UnrealEd.Default__GeomModifier_Weld")); }
}

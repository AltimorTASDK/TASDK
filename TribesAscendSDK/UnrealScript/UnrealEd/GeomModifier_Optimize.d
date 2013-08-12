module UnrealScript.UnrealEd.GeomModifier_Optimize;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Optimize : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Optimize")); }
	private static __gshared GeomModifier_Optimize mDefaultProperties;
	@property final static GeomModifier_Optimize DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Optimize)("GeomModifier_Optimize UnrealEd.Default__GeomModifier_Optimize")); }
}

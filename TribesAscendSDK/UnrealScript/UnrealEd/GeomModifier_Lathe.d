module UnrealScript.UnrealEd.GeomModifier_Lathe;

import ScriptClasses;
import UnrealScript.UnrealEd.GeomModifier_Edit;

extern(C++) interface GeomModifier_Lathe : GeomModifier_Edit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier_Lathe")); }
	private static __gshared GeomModifier_Lathe mDefaultProperties;
	@property final static GeomModifier_Lathe DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier_Lathe)("GeomModifier_Lathe UnrealEd.Default__GeomModifier_Lathe")); }
}

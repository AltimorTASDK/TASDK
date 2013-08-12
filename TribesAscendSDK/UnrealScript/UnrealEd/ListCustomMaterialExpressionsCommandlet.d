module UnrealScript.UnrealEd.ListCustomMaterialExpressionsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListCustomMaterialExpressionsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListCustomMaterialExpressionsCommandlet")); }
	private static __gshared ListCustomMaterialExpressionsCommandlet mDefaultProperties;
	@property final static ListCustomMaterialExpressionsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListCustomMaterialExpressionsCommandlet)("ListCustomMaterialExpressionsCommandlet UnrealEd.Default__ListCustomMaterialExpressionsCommandlet")); }
}

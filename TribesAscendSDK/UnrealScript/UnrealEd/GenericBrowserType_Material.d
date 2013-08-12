module UnrealScript.UnrealEd.GenericBrowserType_Material;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Material : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Material")); }
	private static __gshared GenericBrowserType_Material mDefaultProperties;
	@property final static GenericBrowserType_Material DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_Material)("GenericBrowserType_Material UnrealEd.Default__GenericBrowserType_Material")); }
}

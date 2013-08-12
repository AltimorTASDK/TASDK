module UnrealScript.UnrealEd.GenericBrowserType_DMC;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_DMC : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_DMC")); }
	private static __gshared GenericBrowserType_DMC mDefaultProperties;
	@property final static GenericBrowserType_DMC DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_DMC)("GenericBrowserType_DMC UnrealEd.Default__GenericBrowserType_DMC")); }
}

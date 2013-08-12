module UnrealScript.UnrealEd.GenericBrowserType_Custom;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Custom : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_Custom")); }
	private static __gshared GenericBrowserType_Custom mDefaultProperties;
	@property final static GenericBrowserType_Custom DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_Custom)("GenericBrowserType_Custom UnrealEd.Default__GenericBrowserType_Custom")); }
}

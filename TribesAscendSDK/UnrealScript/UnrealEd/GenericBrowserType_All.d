module UnrealScript.UnrealEd.GenericBrowserType_All;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType_Custom;

extern(C++) interface GenericBrowserType_All : GenericBrowserType_Custom
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_All")); }
	private static __gshared GenericBrowserType_All mDefaultProperties;
	@property final static GenericBrowserType_All DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_All)("GenericBrowserType_All UnrealEd.Default__GenericBrowserType_All")); }
}

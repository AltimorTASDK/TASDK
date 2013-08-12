module UnrealScript.UnrealEd.GenericBrowserType_LensFlare;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_LensFlare : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_LensFlare")); }
	private static __gshared GenericBrowserType_LensFlare mDefaultProperties;
	@property final static GenericBrowserType_LensFlare DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_LensFlare)("GenericBrowserType_LensFlare UnrealEd.Default__GenericBrowserType_LensFlare")); }
}

module UnrealScript.UnrealEd.GenericBrowserType_FaceFXAnimSet;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_FaceFXAnimSet : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_FaceFXAnimSet")); }
	private static __gshared GenericBrowserType_FaceFXAnimSet mDefaultProperties;
	@property final static GenericBrowserType_FaceFXAnimSet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_FaceFXAnimSet)("GenericBrowserType_FaceFXAnimSet UnrealEd.Default__GenericBrowserType_FaceFXAnimSet")); }
}

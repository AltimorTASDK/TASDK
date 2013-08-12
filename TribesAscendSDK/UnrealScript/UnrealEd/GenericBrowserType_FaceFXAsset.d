module UnrealScript.UnrealEd.GenericBrowserType_FaceFXAsset;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_FaceFXAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_FaceFXAsset")); }
	private static __gshared GenericBrowserType_FaceFXAsset mDefaultProperties;
	@property final static GenericBrowserType_FaceFXAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_FaceFXAsset)("GenericBrowserType_FaceFXAsset UnrealEd.Default__GenericBrowserType_FaceFXAsset")); }
}

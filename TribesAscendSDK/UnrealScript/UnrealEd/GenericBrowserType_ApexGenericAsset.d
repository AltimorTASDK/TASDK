module UnrealScript.UnrealEd.GenericBrowserType_ApexGenericAsset;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexGenericAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_ApexGenericAsset")); }
	private static __gshared GenericBrowserType_ApexGenericAsset mDefaultProperties;
	@property final static GenericBrowserType_ApexGenericAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_ApexGenericAsset)("GenericBrowserType_ApexGenericAsset UnrealEd.Default__GenericBrowserType_ApexGenericAsset")); }
}

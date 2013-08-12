module UnrealScript.UnrealEd.GenericBrowserType_ApexDestructibleAsset;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexDestructibleAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_ApexDestructibleAsset")); }
	private static __gshared GenericBrowserType_ApexDestructibleAsset mDefaultProperties;
	@property final static GenericBrowserType_ApexDestructibleAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_ApexDestructibleAsset)("GenericBrowserType_ApexDestructibleAsset UnrealEd.Default__GenericBrowserType_ApexDestructibleAsset")); }
}

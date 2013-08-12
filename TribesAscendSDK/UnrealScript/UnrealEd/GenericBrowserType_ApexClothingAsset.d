module UnrealScript.UnrealEd.GenericBrowserType_ApexClothingAsset;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexClothingAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_ApexClothingAsset")); }
	private static __gshared GenericBrowserType_ApexClothingAsset mDefaultProperties;
	@property final static GenericBrowserType_ApexClothingAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_ApexClothingAsset)("GenericBrowserType_ApexClothingAsset UnrealEd.Default__GenericBrowserType_ApexClothingAsset")); }
}

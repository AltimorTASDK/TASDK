module UnrealScript.UnrealEd.GenericBrowserType_ApexGenericAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexGenericAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_ApexGenericAsset")()); }
	private static __gshared GenericBrowserType_ApexGenericAsset mDefaultProperties;
	@property final static GenericBrowserType_ApexGenericAsset DefaultProperties() { mixin(MGDPC!(GenericBrowserType_ApexGenericAsset, "GenericBrowserType_ApexGenericAsset UnrealEd.Default__GenericBrowserType_ApexGenericAsset")()); }
}

module UnrealScript.UnrealEd.GenericBrowserType_ApexDestructibleAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexDestructibleAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_ApexDestructibleAsset")); }
	private static __gshared GenericBrowserType_ApexDestructibleAsset mDefaultProperties;
	@property final static GenericBrowserType_ApexDestructibleAsset DefaultProperties() { mixin(MGDPC("GenericBrowserType_ApexDestructibleAsset", "GenericBrowserType_ApexDestructibleAsset UnrealEd.Default__GenericBrowserType_ApexDestructibleAsset")); }
}

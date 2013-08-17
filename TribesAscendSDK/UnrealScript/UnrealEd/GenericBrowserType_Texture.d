module UnrealScript.UnrealEd.GenericBrowserType_Texture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Texture : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_Texture")()); }
	private static __gshared GenericBrowserType_Texture mDefaultProperties;
	@property final static GenericBrowserType_Texture DefaultProperties() { mixin(MGDPC!(GenericBrowserType_Texture, "GenericBrowserType_Texture UnrealEd.Default__GenericBrowserType_Texture")()); }
}

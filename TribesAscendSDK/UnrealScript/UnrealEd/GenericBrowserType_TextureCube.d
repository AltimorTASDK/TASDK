module UnrealScript.UnrealEd.GenericBrowserType_TextureCube;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Texture;

extern(C++) interface GenericBrowserType_TextureCube : GenericBrowserType_Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_TextureCube")()); }
	private static __gshared GenericBrowserType_TextureCube mDefaultProperties;
	@property final static GenericBrowserType_TextureCube DefaultProperties() { mixin(MGDPC!(GenericBrowserType_TextureCube, "GenericBrowserType_TextureCube UnrealEd.Default__GenericBrowserType_TextureCube")()); }
}

module UnrealScript.UnrealEd.GenericBrowserType_RenderTexture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Texture;

extern(C++) interface GenericBrowserType_RenderTexture : GenericBrowserType_Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_RenderTexture")); }
	private static __gshared GenericBrowserType_RenderTexture mDefaultProperties;
	@property final static GenericBrowserType_RenderTexture DefaultProperties() { mixin(MGDPC("GenericBrowserType_RenderTexture", "GenericBrowserType_RenderTexture UnrealEd.Default__GenericBrowserType_RenderTexture")); }
}

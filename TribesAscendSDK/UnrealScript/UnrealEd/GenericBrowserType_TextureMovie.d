module UnrealScript.UnrealEd.GenericBrowserType_TextureMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_TextureMovie : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_TextureMovie")); }
	private static __gshared GenericBrowserType_TextureMovie mDefaultProperties;
	@property final static GenericBrowserType_TextureMovie DefaultProperties() { mixin(MGDPC("GenericBrowserType_TextureMovie", "GenericBrowserType_TextureMovie UnrealEd.Default__GenericBrowserType_TextureMovie")); }
}

module UnrealScript.UnrealEd.GenericBrowserType_Font;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Font : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_Font")); }
	private static __gshared GenericBrowserType_Font mDefaultProperties;
	@property final static GenericBrowserType_Font DefaultProperties() { mixin(MGDPC("GenericBrowserType_Font", "GenericBrowserType_Font UnrealEd.Default__GenericBrowserType_Font")); }
}

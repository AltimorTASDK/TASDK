module UnrealScript.UnrealEd.GenericBrowserType_LensFlare;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_LensFlare : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_LensFlare")); }
	private static __gshared GenericBrowserType_LensFlare mDefaultProperties;
	@property final static GenericBrowserType_LensFlare DefaultProperties() { mixin(MGDPC("GenericBrowserType_LensFlare", "GenericBrowserType_LensFlare UnrealEd.Default__GenericBrowserType_LensFlare")); }
}

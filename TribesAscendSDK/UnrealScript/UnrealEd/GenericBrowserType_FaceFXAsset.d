module UnrealScript.UnrealEd.GenericBrowserType_FaceFXAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_FaceFXAsset : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_FaceFXAsset")()); }
	private static __gshared GenericBrowserType_FaceFXAsset mDefaultProperties;
	@property final static GenericBrowserType_FaceFXAsset DefaultProperties() { mixin(MGDPC!(GenericBrowserType_FaceFXAsset, "GenericBrowserType_FaceFXAsset UnrealEd.Default__GenericBrowserType_FaceFXAsset")()); }
}

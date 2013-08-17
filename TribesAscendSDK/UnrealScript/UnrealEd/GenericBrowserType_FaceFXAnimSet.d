module UnrealScript.UnrealEd.GenericBrowserType_FaceFXAnimSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_FaceFXAnimSet : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_FaceFXAnimSet")()); }
	private static __gshared GenericBrowserType_FaceFXAnimSet mDefaultProperties;
	@property final static GenericBrowserType_FaceFXAnimSet DefaultProperties() { mixin(MGDPC!(GenericBrowserType_FaceFXAnimSet, "GenericBrowserType_FaceFXAnimSet UnrealEd.Default__GenericBrowserType_FaceFXAnimSet")()); }
}

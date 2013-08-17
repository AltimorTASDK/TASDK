module UnrealScript.UnrealEd.GenericBrowserType_Prefab;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Prefab : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_Prefab")); }
	private static __gshared GenericBrowserType_Prefab mDefaultProperties;
	@property final static GenericBrowserType_Prefab DefaultProperties() { mixin(MGDPC("GenericBrowserType_Prefab", "GenericBrowserType_Prefab UnrealEd.Default__GenericBrowserType_Prefab")); }
}

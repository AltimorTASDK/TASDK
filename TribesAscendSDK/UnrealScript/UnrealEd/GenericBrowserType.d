module UnrealScript.UnrealEd.GenericBrowserType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GenericBrowserType : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType")); }
	private static __gshared GenericBrowserType mDefaultProperties;
	@property final static GenericBrowserType DefaultProperties() { mixin(MGDPC("GenericBrowserType", "GenericBrowserType UnrealEd.Default__GenericBrowserType")); }
}

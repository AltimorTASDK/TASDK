module UnrealScript.UnrealEd.GenericBrowserType_Custom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Custom : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_Custom")()); }
	private static __gshared GenericBrowserType_Custom mDefaultProperties;
	@property final static GenericBrowserType_Custom DefaultProperties() { mixin(MGDPC!(GenericBrowserType_Custom, "GenericBrowserType_Custom UnrealEd.Default__GenericBrowserType_Custom")()); }
}

module UnrealScript.UnrealEd.GenericBrowserType_All;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType_Custom;

extern(C++) interface GenericBrowserType_All : GenericBrowserType_Custom
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_All")()); }
	private static __gshared GenericBrowserType_All mDefaultProperties;
	@property final static GenericBrowserType_All DefaultProperties() { mixin(MGDPC!(GenericBrowserType_All, "GenericBrowserType_All UnrealEd.Default__GenericBrowserType_All")()); }
}

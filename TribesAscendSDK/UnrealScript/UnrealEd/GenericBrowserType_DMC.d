module UnrealScript.UnrealEd.GenericBrowserType_DMC;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_DMC : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_DMC")()); }
	private static __gshared GenericBrowserType_DMC mDefaultProperties;
	@property final static GenericBrowserType_DMC DefaultProperties() { mixin(MGDPC!(GenericBrowserType_DMC, "GenericBrowserType_DMC UnrealEd.Default__GenericBrowserType_DMC")()); }
}

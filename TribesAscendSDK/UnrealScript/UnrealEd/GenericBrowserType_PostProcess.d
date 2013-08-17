module UnrealScript.UnrealEd.GenericBrowserType_PostProcess;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_PostProcess : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_PostProcess")()); }
	private static __gshared GenericBrowserType_PostProcess mDefaultProperties;
	@property final static GenericBrowserType_PostProcess DefaultProperties() { mixin(MGDPC!(GenericBrowserType_PostProcess, "GenericBrowserType_PostProcess UnrealEd.Default__GenericBrowserType_PostProcess")()); }
}

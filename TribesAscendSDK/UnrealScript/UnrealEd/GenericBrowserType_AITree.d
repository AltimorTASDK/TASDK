module UnrealScript.UnrealEd.GenericBrowserType_AITree;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_AITree : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_AITree")()); }
	private static __gshared GenericBrowserType_AITree mDefaultProperties;
	@property final static GenericBrowserType_AITree DefaultProperties() { mixin(MGDPC!(GenericBrowserType_AITree, "GenericBrowserType_AITree UnrealEd.Default__GenericBrowserType_AITree")()); }
}

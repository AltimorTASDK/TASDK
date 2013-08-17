module UnrealScript.UnrealEd.GenericBrowserType_MaterialInstanceConstant;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_MaterialInstanceConstant : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_MaterialInstanceConstant")()); }
	private static __gshared GenericBrowserType_MaterialInstanceConstant mDefaultProperties;
	@property final static GenericBrowserType_MaterialInstanceConstant DefaultProperties() { mixin(MGDPC!(GenericBrowserType_MaterialInstanceConstant, "GenericBrowserType_MaterialInstanceConstant UnrealEd.Default__GenericBrowserType_MaterialInstanceConstant")()); }
}

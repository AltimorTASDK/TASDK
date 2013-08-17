module UnrealScript.UnrealEd.GenericBrowserType_Material;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_Material : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_Material")()); }
	private static __gshared GenericBrowserType_Material mDefaultProperties;
	@property final static GenericBrowserType_Material DefaultProperties() { mixin(MGDPC!(GenericBrowserType_Material, "GenericBrowserType_Material UnrealEd.Default__GenericBrowserType_Material")()); }
}

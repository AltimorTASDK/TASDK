module UnrealScript.UnrealEd.GenericBrowserType_DecalMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_DecalMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_DecalMaterial")()); }
	private static __gshared GenericBrowserType_DecalMaterial mDefaultProperties;
	@property final static GenericBrowserType_DecalMaterial DefaultProperties() { mixin(MGDPC!(GenericBrowserType_DecalMaterial, "GenericBrowserType_DecalMaterial UnrealEd.Default__GenericBrowserType_DecalMaterial")()); }
}

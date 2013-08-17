module UnrealScript.UnrealEd.GenericBrowserType_PhysicalMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_PhysicalMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_PhysicalMaterial")()); }
	private static __gshared GenericBrowserType_PhysicalMaterial mDefaultProperties;
	@property final static GenericBrowserType_PhysicalMaterial DefaultProperties() { mixin(MGDPC!(GenericBrowserType_PhysicalMaterial, "GenericBrowserType_PhysicalMaterial UnrealEd.Default__GenericBrowserType_PhysicalMaterial")()); }
}

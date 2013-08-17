module UnrealScript.UnrealEd.GenericBrowserType_TerrainMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_TerrainMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_TerrainMaterial")); }
	private static __gshared GenericBrowserType_TerrainMaterial mDefaultProperties;
	@property final static GenericBrowserType_TerrainMaterial DefaultProperties() { mixin(MGDPC("GenericBrowserType_TerrainMaterial", "GenericBrowserType_TerrainMaterial UnrealEd.Default__GenericBrowserType_TerrainMaterial")); }
}

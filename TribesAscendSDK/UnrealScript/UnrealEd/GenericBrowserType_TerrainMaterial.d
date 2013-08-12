module UnrealScript.UnrealEd.GenericBrowserType_TerrainMaterial;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_TerrainMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_TerrainMaterial")); }
	private static __gshared GenericBrowserType_TerrainMaterial mDefaultProperties;
	@property final static GenericBrowserType_TerrainMaterial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_TerrainMaterial)("GenericBrowserType_TerrainMaterial UnrealEd.Default__GenericBrowserType_TerrainMaterial")); }
}

module UnrealScript.UnrealEd.TerrainHeightMapExporterTextT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.TerrainHeightMapExporter;

extern(C++) interface TerrainHeightMapExporterTextT3D : TerrainHeightMapExporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapExporterTextT3D")); }
	private static __gshared TerrainHeightMapExporterTextT3D mDefaultProperties;
	@property final static TerrainHeightMapExporterTextT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainHeightMapExporterTextT3D)("TerrainHeightMapExporterTextT3D UnrealEd.Default__TerrainHeightMapExporterTextT3D")); }
}

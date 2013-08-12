module UnrealScript.UnrealEd.TerrainHeightMapExporterG16BMPT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.TerrainHeightMapExporter;

extern(C++) interface TerrainHeightMapExporterG16BMPT3D : TerrainHeightMapExporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapExporterG16BMPT3D")); }
	private static __gshared TerrainHeightMapExporterG16BMPT3D mDefaultProperties;
	@property final static TerrainHeightMapExporterG16BMPT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainHeightMapExporterG16BMPT3D)("TerrainHeightMapExporterG16BMPT3D UnrealEd.Default__TerrainHeightMapExporterG16BMPT3D")); }
}

module UnrealScript.UnrealEd.TerrainHeightMapExporterG16BMPT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TerrainHeightMapExporter;

extern(C++) interface TerrainHeightMapExporterG16BMPT3D : TerrainHeightMapExporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TerrainHeightMapExporterG16BMPT3D")()); }
	private static __gshared TerrainHeightMapExporterG16BMPT3D mDefaultProperties;
	@property final static TerrainHeightMapExporterG16BMPT3D DefaultProperties() { mixin(MGDPC!(TerrainHeightMapExporterG16BMPT3D, "TerrainHeightMapExporterG16BMPT3D UnrealEd.Default__TerrainHeightMapExporterG16BMPT3D")()); }
}

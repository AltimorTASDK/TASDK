module UnrealScript.UnrealEd.TerrainHeightMapExporter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface TerrainHeightMapExporter : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TerrainHeightMapExporter")()); }
	private static __gshared TerrainHeightMapExporter mDefaultProperties;
	@property final static TerrainHeightMapExporter DefaultProperties() { mixin(MGDPC!(TerrainHeightMapExporter, "TerrainHeightMapExporter UnrealEd.Default__TerrainHeightMapExporter")()); }
}

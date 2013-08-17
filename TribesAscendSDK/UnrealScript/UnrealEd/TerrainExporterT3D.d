module UnrealScript.UnrealEd.TerrainExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface TerrainExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TerrainExporterT3D")); }
	private static __gshared TerrainExporterT3D mDefaultProperties;
	@property final static TerrainExporterT3D DefaultProperties() { mixin(MGDPC("TerrainExporterT3D", "TerrainExporterT3D UnrealEd.Default__TerrainExporterT3D")); }
}

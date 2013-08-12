module UnrealScript.UnrealEd.TerrainHeightMapExporter;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface TerrainHeightMapExporter : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapExporter")); }
	private static __gshared TerrainHeightMapExporter mDefaultProperties;
	@property final static TerrainHeightMapExporter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainHeightMapExporter)("TerrainHeightMapExporter UnrealEd.Default__TerrainHeightMapExporter")); }
}

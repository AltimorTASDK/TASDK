module UnrealScript.UnrealEd.TerrainExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface TerrainExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainExporterT3D")); }
}

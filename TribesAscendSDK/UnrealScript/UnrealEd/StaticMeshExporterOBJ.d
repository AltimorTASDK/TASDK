module UnrealScript.UnrealEd.StaticMeshExporterOBJ;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface StaticMeshExporterOBJ : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.StaticMeshExporterOBJ")()); }
	private static __gshared StaticMeshExporterOBJ mDefaultProperties;
	@property final static StaticMeshExporterOBJ DefaultProperties() { mixin(MGDPC!(StaticMeshExporterOBJ, "StaticMeshExporterOBJ UnrealEd.Default__StaticMeshExporterOBJ")()); }
}

module UnrealScript.UnrealEd.StaticMeshExporterOBJ;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface StaticMeshExporterOBJ : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshExporterOBJ")); }
	private static __gshared StaticMeshExporterOBJ mDefaultProperties;
	@property final static StaticMeshExporterOBJ DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshExporterOBJ)("StaticMeshExporterOBJ UnrealEd.Default__StaticMeshExporterOBJ")); }
}

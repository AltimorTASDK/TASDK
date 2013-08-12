module UnrealScript.UnrealEd.StaticMeshExporterT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.ExporterT3DX;

extern(C++) interface StaticMeshExporterT3D : ExporterT3DX
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshExporterT3D")); }
	private static __gshared StaticMeshExporterT3D mDefaultProperties;
	@property final static StaticMeshExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshExporterT3D)("StaticMeshExporterT3D UnrealEd.Default__StaticMeshExporterT3D")); }
}

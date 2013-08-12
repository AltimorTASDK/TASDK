module UnrealScript.UnrealEd.ModelExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface ModelExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ModelExporterT3D")); }
	private static __gshared ModelExporterT3D mDefaultProperties;
	@property final static ModelExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ModelExporterT3D)("ModelExporterT3D UnrealEd.Default__ModelExporterT3D")); }
}

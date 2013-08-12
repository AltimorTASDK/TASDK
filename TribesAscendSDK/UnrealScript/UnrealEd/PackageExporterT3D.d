module UnrealScript.UnrealEd.PackageExporterT3D;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface PackageExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PackageExporterT3D")); }
	private static __gshared PackageExporterT3D mDefaultProperties;
	@property final static PackageExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PackageExporterT3D)("PackageExporterT3D UnrealEd.Default__PackageExporterT3D")); }
}

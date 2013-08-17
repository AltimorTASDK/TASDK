module UnrealScript.UnrealEd.PackageExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface PackageExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PackageExporterT3D")()); }
	private static __gshared PackageExporterT3D mDefaultProperties;
	@property final static PackageExporterT3D DefaultProperties() { mixin(MGDPC!(PackageExporterT3D, "PackageExporterT3D UnrealEd.Default__PackageExporterT3D")()); }
}

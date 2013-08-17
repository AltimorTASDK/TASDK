module UnrealScript.UnrealEd.ObjectExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface ObjectExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ObjectExporterT3D")()); }
	private static __gshared ObjectExporterT3D mDefaultProperties;
	@property final static ObjectExporterT3D DefaultProperties() { mixin(MGDPC!(ObjectExporterT3D, "ObjectExporterT3D UnrealEd.Default__ObjectExporterT3D")()); }
}

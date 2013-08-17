module UnrealScript.UnrealEd.ModelExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface ModelExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ModelExporterT3D")()); }
	private static __gshared ModelExporterT3D mDefaultProperties;
	@property final static ModelExporterT3D DefaultProperties() { mixin(MGDPC!(ModelExporterT3D, "ModelExporterT3D UnrealEd.Default__ModelExporterT3D")()); }
}

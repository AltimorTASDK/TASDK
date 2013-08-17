module UnrealScript.UnrealEd.ClassExporterUC;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface ClassExporterUC : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ClassExporterUC")()); }
	private static __gshared ClassExporterUC mDefaultProperties;
	@property final static ClassExporterUC DefaultProperties() { mixin(MGDPC!(ClassExporterUC, "ClassExporterUC UnrealEd.Default__ClassExporterUC")()); }
}

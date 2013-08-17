module UnrealScript.UnrealEd.SequenceExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface SequenceExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.SequenceExporterT3D")); }
	private static __gshared SequenceExporterT3D mDefaultProperties;
	@property final static SequenceExporterT3D DefaultProperties() { mixin(MGDPC("SequenceExporterT3D", "SequenceExporterT3D UnrealEd.Default__SequenceExporterT3D")); }
}

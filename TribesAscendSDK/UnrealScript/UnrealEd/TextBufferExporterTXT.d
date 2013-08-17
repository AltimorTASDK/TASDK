module UnrealScript.UnrealEd.TextBufferExporterTXT;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface TextBufferExporterTXT : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TextBufferExporterTXT")); }
	private static __gshared TextBufferExporterTXT mDefaultProperties;
	@property final static TextBufferExporterTXT DefaultProperties() { mixin(MGDPC("TextBufferExporterTXT", "TextBufferExporterTXT UnrealEd.Default__TextBufferExporterTXT")); }
}

module UnrealScript.UnrealEd.SoundExporterWAV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface SoundExporterWAV : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.SoundExporterWAV")()); }
	private static __gshared SoundExporterWAV mDefaultProperties;
	@property final static SoundExporterWAV DefaultProperties() { mixin(MGDPC!(SoundExporterWAV, "SoundExporterWAV UnrealEd.Default__SoundExporterWAV")()); }
}

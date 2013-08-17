module UnrealScript.UnrealEd.SoundSurroundExporterWAV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface SoundSurroundExporterWAV : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.SoundSurroundExporterWAV")); }
	private static __gshared SoundSurroundExporterWAV mDefaultProperties;
	@property final static SoundSurroundExporterWAV DefaultProperties() { mixin(MGDPC("SoundSurroundExporterWAV", "SoundSurroundExporterWAV UnrealEd.Default__SoundSurroundExporterWAV")); }
}

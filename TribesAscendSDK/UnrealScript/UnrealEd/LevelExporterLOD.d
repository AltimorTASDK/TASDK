module UnrealScript.UnrealEd.LevelExporterLOD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterLOD : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.LevelExporterLOD")); }
	private static __gshared LevelExporterLOD mDefaultProperties;
	@property final static LevelExporterLOD DefaultProperties() { mixin(MGDPC("LevelExporterLOD", "LevelExporterLOD UnrealEd.Default__LevelExporterLOD")); }
}

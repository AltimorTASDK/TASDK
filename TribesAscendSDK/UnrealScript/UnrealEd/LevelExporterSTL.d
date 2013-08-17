module UnrealScript.UnrealEd.LevelExporterSTL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterSTL : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.LevelExporterSTL")); }
	private static __gshared LevelExporterSTL mDefaultProperties;
	@property final static LevelExporterSTL DefaultProperties() { mixin(MGDPC("LevelExporterSTL", "LevelExporterSTL UnrealEd.Default__LevelExporterSTL")); }
}

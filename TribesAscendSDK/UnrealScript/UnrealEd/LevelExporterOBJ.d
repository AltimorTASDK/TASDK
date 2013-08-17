module UnrealScript.UnrealEd.LevelExporterOBJ;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterOBJ : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.LevelExporterOBJ")()); }
	private static __gshared LevelExporterOBJ mDefaultProperties;
	@property final static LevelExporterOBJ DefaultProperties() { mixin(MGDPC!(LevelExporterOBJ, "LevelExporterOBJ UnrealEd.Default__LevelExporterOBJ")()); }
}

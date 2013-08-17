module UnrealScript.UnrealEd.PerformTerrainMaterialDumpCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface PerformTerrainMaterialDumpCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PerformTerrainMaterialDumpCommandlet")()); }
	private static __gshared PerformTerrainMaterialDumpCommandlet mDefaultProperties;
	@property final static PerformTerrainMaterialDumpCommandlet DefaultProperties() { mixin(MGDPC!(PerformTerrainMaterialDumpCommandlet, "PerformTerrainMaterialDumpCommandlet UnrealEd.Default__PerformTerrainMaterialDumpCommandlet")()); }
}

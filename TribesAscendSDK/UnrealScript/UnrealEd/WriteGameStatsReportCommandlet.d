module UnrealScript.UnrealEd.WriteGameStatsReportCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface WriteGameStatsReportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.WriteGameStatsReportCommandlet")()); }
	private static __gshared WriteGameStatsReportCommandlet mDefaultProperties;
	@property final static WriteGameStatsReportCommandlet DefaultProperties() { mixin(MGDPC!(WriteGameStatsReportCommandlet, "WriteGameStatsReportCommandlet UnrealEd.Default__WriteGameStatsReportCommandlet")()); }
}

module UnrealScript.UnrealEd.WriteGameStatsReportCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface WriteGameStatsReportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.WriteGameStatsReportCommandlet")); }
	private static __gshared WriteGameStatsReportCommandlet mDefaultProperties;
	@property final static WriteGameStatsReportCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(WriteGameStatsReportCommandlet)("WriteGameStatsReportCommandlet UnrealEd.Default__WriteGameStatsReportCommandlet")); }
}

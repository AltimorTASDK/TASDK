module UnrealScript.UnrealEd.GameStatsReport;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GameStatsReport : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GameStatsReport")()); }
	private static __gshared GameStatsReport mDefaultProperties;
	@property final static GameStatsReport DefaultProperties() { mixin(MGDPC!(GameStatsReport, "GameStatsReport UnrealEd.Default__GameStatsReport")()); }
}

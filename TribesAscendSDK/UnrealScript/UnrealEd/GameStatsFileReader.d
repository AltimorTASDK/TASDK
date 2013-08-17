module UnrealScript.UnrealEd.GameStatsFileReader;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameStatsFileReader : GameplayEventsHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GameStatsFileReader")()); }
	private static __gshared GameStatsFileReader mDefaultProperties;
	@property final static GameStatsFileReader DefaultProperties() { mixin(MGDPC!(GameStatsFileReader, "GameStatsFileReader UnrealEd.Default__GameStatsFileReader")()); }
}

module UnrealScript.UnrealEd.GameStatsDBUploader;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameStatsDBUploader : GameplayEventsHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GameStatsDBUploader")()); }
	private static __gshared GameStatsDBUploader mDefaultProperties;
	@property final static GameStatsDBUploader DefaultProperties() { mixin(MGDPC!(GameStatsDBUploader, "GameStatsDBUploader UnrealEd.Default__GameStatsDBUploader")()); }
}

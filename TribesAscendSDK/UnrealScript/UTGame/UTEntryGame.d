module UnrealScript.UTGame.UTEntryGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTTeamGame;

extern(C++) interface UTEntryGame : UTTeamGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTEntryGame")()); }
	private static __gshared UTEntryGame mDefaultProperties;
	@property final static UTEntryGame DefaultProperties() { mixin(MGDPC!(UTEntryGame, "UTEntryGame UTGame.Default__UTEntryGame")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mNeedPlayers;
			ScriptFunction mStartMatch;
			ScriptFunction mInitGame;
		}
		public @property static final
		{
			ScriptFunction NeedPlayers() { mixin(MGF!("mNeedPlayers", "Function UTGame.UTEntryGame.NeedPlayers")()); }
			ScriptFunction StartMatch() { mixin(MGF!("mStartMatch", "Function UTGame.UTEntryGame.StartMatch")()); }
			ScriptFunction InitGame() { mixin(MGF!("mInitGame", "Function UTGame.UTEntryGame.InitGame")()); }
		}
	}
	static struct PendingMatch
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTEntryGame.PendingMatch")()); }
	}
final:
	bool NeedPlayers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedPlayers, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	void InitGame(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}

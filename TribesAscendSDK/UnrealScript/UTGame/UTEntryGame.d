module UnrealScript.UTGame.UTEntryGame;

import ScriptClasses;
import UnrealScript.UTGame.UTTeamGame;

extern(C++) interface UTEntryGame : UTTeamGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEntryGame")); }
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
			ScriptFunction NeedPlayers() { return mNeedPlayers ? mNeedPlayers : (mNeedPlayers = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEntryGame.NeedPlayers")); }
			ScriptFunction StartMatch() { return mStartMatch ? mStartMatch : (mStartMatch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEntryGame.StartMatch")); }
			ScriptFunction InitGame() { return mInitGame ? mInitGame : (mInitGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEntryGame.InitGame")); }
		}
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
	void InitGame(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitGame, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
}

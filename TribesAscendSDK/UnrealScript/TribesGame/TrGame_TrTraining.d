module UnrealScript.TribesGame.TrGame_TrTraining;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TrTraining : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGame_TrTraining")()); }
	private static __gshared TrGame_TrTraining mDefaultProperties;
	@property final static TrGame_TrTraining DefaultProperties() { mixin(MGDPC!(TrGame_TrTraining, "TrGame_TrTraining TribesGame.Default__TrGame_TrTraining")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCheckScore;
			ScriptFunction mPickTeam;
			ScriptFunction mPickTeamForMigration;
			ScriptFunction mEndGame;
			ScriptFunction mAutoEndGame;
			ScriptFunction mPlayEndOfMatchMessage;
		}
		public @property static final
		{
			ScriptFunction CheckScore() { mixin(MGF!("mCheckScore", "Function TribesGame.TrGame_TrTraining.CheckScore")()); }
			ScriptFunction PickTeam() { mixin(MGF!("mPickTeam", "Function TribesGame.TrGame_TrTraining.PickTeam")()); }
			ScriptFunction PickTeamForMigration() { mixin(MGF!("mPickTeamForMigration", "Function TribesGame.TrGame_TrTraining.PickTeamForMigration")()); }
			ScriptFunction EndGame() { mixin(MGF!("mEndGame", "Function TribesGame.TrGame_TrTraining.EndGame")()); }
			ScriptFunction AutoEndGame() { mixin(MGF!("mAutoEndGame", "Function TribesGame.TrGame_TrTraining.AutoEndGame")()); }
			ScriptFunction PlayEndOfMatchMessage() { mixin(MGF!("mPlayEndOfMatchMessage", "Function TribesGame.TrGame_TrTraining.PlayEndOfMatchMessage")()); }
		}
	}
	static struct MatchOver
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrGame_TrTraining.MatchOver")()); }
	}
final:
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ubyte PickTeam(ubyte Num, Controller C)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = Num;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickTeam, params.ptr, cast(void*)0);
		return params[8];
	}
	ubyte PickTeamForMigration(Controller C)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickTeamForMigration, params.ptr, cast(void*)0);
		return params[4];
	}
	void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndGame, params.ptr, cast(void*)0);
	}
	void AutoEndGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoEndGame, cast(void*)0, cast(void*)0);
	}
	void PlayEndOfMatchMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEndOfMatchMessage, cast(void*)0, cast(void*)0);
	}
}

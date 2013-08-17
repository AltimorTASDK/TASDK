module UnrealScript.TribesGame.TrGame_TrDaD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.TribesGame.TrPowerGenerator;

extern(C++) interface TrGame_TrDaD : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGame_TrDaD")); }
	private static __gshared TrGame_TrDaD mDefaultProperties;
	@property final static TrGame_TrDaD DefaultProperties() { mixin(MGDPC("TrGame_TrDaD", "TrGame_TrDaD TribesGame.Default__TrGame_TrDaD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResetScores;
			ScriptFunction mSetTeam;
			ScriptFunction mLogout;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mResetLevel;
			ScriptFunction mRespawnPlayers;
			ScriptFunction mResetRound;
			ScriptFunction mScoreKill;
			ScriptFunction mCheckScore;
			ScriptFunction mDetermineWinningTeam;
			ScriptFunction mGotoPendingRoundStartTimer;
			ScriptFunction mCheckEndGame;
			ScriptFunction mOnCoreBlownUp;
			ScriptFunction mSendMatchCountdown;
			ScriptFunction mRestartPlayer;
			ScriptFunction mGetGameTypeId;
			ScriptFunction mOnGeneratorPowerChange;
		}
		public @property static final
		{
			ScriptFunction ResetScores() { mixin(MGF("mResetScores", "Function TribesGame.TrGame_TrDaD.ResetScores")); }
			ScriptFunction SetTeam() { mixin(MGF("mSetTeam", "Function TribesGame.TrGame_TrDaD.SetTeam")); }
			ScriptFunction Logout() { mixin(MGF("mLogout", "Function TribesGame.TrGame_TrDaD.Logout")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrGame_TrDaD.PostBeginPlay")); }
			ScriptFunction ResetLevel() { mixin(MGF("mResetLevel", "Function TribesGame.TrGame_TrDaD.ResetLevel")); }
			ScriptFunction RespawnPlayers() { mixin(MGF("mRespawnPlayers", "Function TribesGame.TrGame_TrDaD.RespawnPlayers")); }
			ScriptFunction ResetRound() { mixin(MGF("mResetRound", "Function TribesGame.TrGame_TrDaD.ResetRound")); }
			ScriptFunction ScoreKill() { mixin(MGF("mScoreKill", "Function TribesGame.TrGame_TrDaD.ScoreKill")); }
			ScriptFunction CheckScore() { mixin(MGF("mCheckScore", "Function TribesGame.TrGame_TrDaD.CheckScore")); }
			ScriptFunction DetermineWinningTeam() { mixin(MGF("mDetermineWinningTeam", "Function TribesGame.TrGame_TrDaD.DetermineWinningTeam")); }
			ScriptFunction GotoPendingRoundStartTimer() { mixin(MGF("mGotoPendingRoundStartTimer", "Function TribesGame.TrGame_TrDaD.GotoPendingRoundStartTimer")); }
			ScriptFunction CheckEndGame() { mixin(MGF("mCheckEndGame", "Function TribesGame.TrGame_TrDaD.CheckEndGame")); }
			ScriptFunction OnCoreBlownUp() { mixin(MGF("mOnCoreBlownUp", "Function TribesGame.TrGame_TrDaD.OnCoreBlownUp")); }
			ScriptFunction SendMatchCountdown() { mixin(MGF("mSendMatchCountdown", "Function TribesGame.TrGame_TrDaD.SendMatchCountdown")); }
			ScriptFunction RestartPlayer() { mixin(MGF("mRestartPlayer", "Function TribesGame.TrGame_TrDaD.RestartPlayer")); }
			ScriptFunction GetGameTypeId() { mixin(MGF("mGetGameTypeId", "Function TribesGame.TrGame_TrDaD.GetGameTypeId")); }
			ScriptFunction OnGeneratorPowerChange() { mixin(MGF("mOnGeneratorPowerChange", "Function TribesGame.TrGame_TrDaD.OnGeneratorPowerChange")); }
		}
	}
	static struct MatchInProgress
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrGame_TrDaD.MatchInProgress")); }
	}
	static struct PendingRoundStart
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrGame_TrDaD.PendingRoundStart")); }
	}
final:
	void ResetScores()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetScores, cast(void*)0, cast(void*)0);
	}
	void SetTeam(Controller Other, UTTeamInfo NewTeam, bool bNewTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(UTTeamInfo*)&params[4] = NewTeam;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logout, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ResetLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetLevel, cast(void*)0, cast(void*)0);
	}
	void RespawnPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RespawnPlayers, cast(void*)0, cast(void*)0);
	}
	void ResetRound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetRound, cast(void*)0, cast(void*)0);
	}
	void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckScore, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int DetermineWinningTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetermineWinningTeam, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void GotoPendingRoundStartTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GotoPendingRoundStartTimer, cast(void*)0, cast(void*)0);
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckEndGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void OnCoreBlownUp(ubyte Team)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = Team;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCoreBlownUp, params.ptr, cast(void*)0);
	}
	void SendMatchCountdown(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMatchCountdown, params.ptr, cast(void*)0);
	}
	void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartPlayer, params.ptr, cast(void*)0);
	}
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void OnGeneratorPowerChange(TrPowerGenerator G)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPowerGenerator*)params.ptr = G;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGeneratorPowerChange, params.ptr, cast(void*)0);
	}
}

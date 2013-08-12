module UnrealScript.TribesGame.TrGame_TrCaH;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.TribesGame.TrGame;
import UnrealScript.TribesGame.TrCaHCapturePoint;
import UnrealScript.UTGame.UTTeamInfo;

extern(C++) interface TrGame_TrCaH : TrGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGame_TrCaH")); }
	private static __gshared TrGame_TrCaH mDefaultProperties;
	@property final static TrGame_TrCaH DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGame_TrCaH)("TrGame_TrCaH TribesGame.Default__TrGame_TrCaH")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mApplyServerSettings;
			ScriptFunction mSetTeam;
			ScriptFunction mLogout;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mResetLevel;
			ScriptFunction mScoreKill;
			ScriptFunction mCheckScore;
			ScriptFunction mGotoPendingRoundStartTimer;
			ScriptFunction mCheckEndGame;
			ScriptFunction mAwardPoint;
			ScriptFunction mRestartPlayer;
			ScriptFunction mGetGameTypeId;
			ScriptFunction mOnCapturePointHeld;
			ScriptFunction mOnCapturePointOwnershipChanged;
			ScriptFunction mRatePlayerStart;
			ScriptFunction mChoosePlayerStart;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.PreBeginPlay")); }
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.ApplyServerSettings")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.SetTeam")); }
			ScriptFunction Logout() { return mLogout ? mLogout : (mLogout = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.Logout")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.PostBeginPlay")); }
			ScriptFunction ResetLevel() { return mResetLevel ? mResetLevel : (mResetLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.ResetLevel")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.ScoreKill")); }
			ScriptFunction CheckScore() { return mCheckScore ? mCheckScore : (mCheckScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.CheckScore")); }
			ScriptFunction GotoPendingRoundStartTimer() { return mGotoPendingRoundStartTimer ? mGotoPendingRoundStartTimer : (mGotoPendingRoundStartTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.GotoPendingRoundStartTimer")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.CheckEndGame")); }
			ScriptFunction AwardPoint() { return mAwardPoint ? mAwardPoint : (mAwardPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.AwardPoint")); }
			ScriptFunction RestartPlayer() { return mRestartPlayer ? mRestartPlayer : (mRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.RestartPlayer")); }
			ScriptFunction GetGameTypeId() { return mGetGameTypeId ? mGetGameTypeId : (mGetGameTypeId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.GetGameTypeId")); }
			ScriptFunction OnCapturePointHeld() { return mOnCapturePointHeld ? mOnCapturePointHeld : (mOnCapturePointHeld = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.OnCapturePointHeld")); }
			ScriptFunction OnCapturePointOwnershipChanged() { return mOnCapturePointOwnershipChanged ? mOnCapturePointOwnershipChanged : (mOnCapturePointOwnershipChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.OnCapturePointOwnershipChanged")); }
			ScriptFunction RatePlayerStart() { return mRatePlayerStart ? mRatePlayerStart : (mRatePlayerStart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.RatePlayerStart")); }
			ScriptFunction ChoosePlayerStart() { return mChoosePlayerStart ? mChoosePlayerStart : (mChoosePlayerStart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrGame_TrCaH.ChoosePlayerStart")); }
		}
	}
	@property final auto ref
	{
		int m_nPostCapturePointTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1476); }
		int m_nTicketCountTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
		ScriptArray!(TrCaHCapturePoint) m_CapturePoints() { return *cast(ScriptArray!(TrCaHCapturePoint)*)(cast(size_t)cast(void*)this + 1456); }
		int m_5PointGoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 1488); }
		int m_4PointGoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 1484); }
		int m_3PointGoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 1480); }
		int m_nRemainingTicketTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1468); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
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
	void AwardPoint(ubyte TeamIndex)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardPoint, params.ptr, cast(void*)0);
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
	void OnCapturePointHeld(TrCaHCapturePoint HeldPoint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCaHCapturePoint*)params.ptr = HeldPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCapturePointHeld, params.ptr, cast(void*)0);
	}
	void OnCapturePointOwnershipChanged(TrCaHCapturePoint PointThatChanged, TrPawn TRP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrCaHCapturePoint*)params.ptr = PointThatChanged;
		*cast(TrPawn*)&params[4] = TRP;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCapturePointOwnershipChanged, params.ptr, cast(void*)0);
	}
	float RatePlayerStart(PlayerStart P, ubyte Team, Controller pPlayer)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RatePlayerStart, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	PlayerStart ChoosePlayerStart(Controller pPlayer, ubyte InTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		params[4] = InTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChoosePlayerStart, params.ptr, cast(void*)0);
		return *cast(PlayerStart*)&params[8];
	}
}

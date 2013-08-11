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
	public @property final auto ref int m_nPostCapturePointTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1476); }
	public @property final auto ref int m_nTicketCountTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref ScriptArray!(TrCaHCapturePoint) m_CapturePoints() { return *cast(ScriptArray!(TrCaHCapturePoint)*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref int m_5PointGoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref int m_4PointGoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 1484); }
	public @property final auto ref int m_3PointGoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref int m_nRemainingTicketTime() { return *cast(int*)(cast(size_t)cast(void*)this + 1468); }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90545], cast(void*)0, cast(void*)0);
	}
	final void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90547], cast(void*)0, cast(void*)0);
	}
	final void SetTeam(Controller Other, UTTeamInfo NewTeam, bool bNewTeam)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(UTTeamInfo*)&params[4] = NewTeam;
		*cast(bool*)&params[8] = bNewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90549], params.ptr, cast(void*)0);
	}
	final void Logout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90553], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90555], cast(void*)0, cast(void*)0);
	}
	final void ResetLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90556], cast(void*)0, cast(void*)0);
	}
	final void ScoreKill(Controller Killer, Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90557], params.ptr, cast(void*)0);
	}
	final bool CheckScore(PlayerReplicationInfo Scorer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90560], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GotoPendingRoundStartTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90563], cast(void*)0, cast(void*)0);
	}
	final bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90564], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AwardPoint(ubyte TeamIndex)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90570], params.ptr, cast(void*)0);
	}
	final void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90579], params.ptr, cast(void*)0);
	}
	final int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90581], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void OnCapturePointHeld(TrCaHCapturePoint HeldPoint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCaHCapturePoint*)params.ptr = HeldPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90583], params.ptr, cast(void*)0);
	}
	final void OnCapturePointOwnershipChanged(TrCaHCapturePoint PointThatChanged, TrPawn TRP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrCaHCapturePoint*)params.ptr = PointThatChanged;
		*cast(TrPawn*)&params[4] = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90587], params.ptr, cast(void*)0);
	}
	final float RatePlayerStart(PlayerStart P, ubyte Team, Controller Player)
	{
		ubyte params[13];
		params[] = 0;
		*cast(PlayerStart*)params.ptr = P;
		params[4] = Team;
		*cast(Controller*)&params[8] = Player;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90591], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final PlayerStart ChoosePlayerStart(Controller Player, ubyte InTeam)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Controller*)params.ptr = Player;
		params[4] = InTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90600], params.ptr, cast(void*)0);
		return *cast(PlayerStart*)&params[8];
	}
}

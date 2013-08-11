module UnrealScript.TribesGame.GFxTrScene_MatchSummary;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_MatchSummary : GFxTrScene
{
	struct ScoreSlot
	{
		public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __PlayerName[12];
		public @property final auto ref int PlayerID() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __PlayerID[4];
		public @property final auto ref int Credits() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Credits[4];
		public @property final auto ref int Assists() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Assists[4];
		public @property final auto ref int Rank() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Rank[4];
		public @property final auto ref int Kills() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Kills[4];
	}
	public @property final bool bUseSNS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
	public @property final bool bUseSNS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(TrSummaryHelper.MVPAward) MVPAwards() { return *cast(ScriptArray!(TrSummaryHelper.MVPAward)*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref ScriptArray!(TrSummaryHelper.MVPAward) MVPAccolades() { return *cast(ScriptArray!(TrSummaryHelper.MVPAward)*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref TrSummaryHelper SummaryHelper() { return *cast(TrSummaryHelper*)(cast(size_t)cast(void*)this + 1252); }
	public @property final auto ref GFxTrScene_MatchSummary.ScoreSlot Scoreboard() { return *cast(GFxTrScene_MatchSummary.ScoreSlot*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref int Team2Score() { return *cast(int*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref int Team1Score() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref int MatchDate() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref int MatchDuration() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref int MatchGameType() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref int MatchMapId() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref int MatchId() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref int WinningTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref GFxObject ScoreboardDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref GFxObject AccoladeDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref GFxObject AwardDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref GFxObject MiscDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int ScoreboardDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int AccoladeDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int AwardDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int MiscDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int SCOREBOARD_SIZE() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	final int CreditsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63292], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63312], cast(void*)0, cast(void*)0);
	}
	final void ClearSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63313], cast(void*)0, cast(void*)0);
	}
	final void SummaryReady()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63315], cast(void*)0, cast(void*)0);
	}
	final void LoadTeamStatsData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63604], params.ptr, cast(void*)0);
	}
	final void LoadTeamAccoladeData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63609], params.ptr, cast(void*)0);
	}
	final void LoadTeamScoreboardData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63612], params.ptr, cast(void*)0);
	}
	final void LoadTeamMiscData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63615], params.ptr, cast(void*)0);
	}
	final void AddAward(int PlayerID, int AwardId, int val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		*cast(int*)&params[4] = AwardId;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63617], params.ptr, cast(void*)0);
	}
	final void AddAccolade(int PlayerID, int AccoladeId, int val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		*cast(int*)&params[4] = AccoladeId;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63630], params.ptr, cast(void*)0);
	}
	final void AddScoreSlot(ScriptString PlayerName, int Kills, int Assists, int Credits, int Rank)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(int*)&params[12] = Kills;
		*cast(int*)&params[16] = Assists;
		*cast(int*)&params[20] = Credits;
		*cast(int*)&params[24] = Rank;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63638], params.ptr, cast(void*)0);
	}
	final void AddMiscData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63645], cast(void*)0, cast(void*)0);
	}
	final ScriptString FormatResult(int aWinningTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = aWinningTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63647], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63652], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString FindPlayerName(int PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63658], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void PopulateScoreboardDataFromGRI()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63662], cast(void*)0, cast(void*)0);
	}
}

module UnrealScript.TribesGame.GFxTrScene_MatchSummary;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_MatchSummary : GFxTrScene
{
public extern(D):
	struct ScoreSlot
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
			int PlayerID() { return *cast(int*)(cast(size_t)&this + 16); }
			int Credits() { return *cast(int*)(cast(size_t)&this + 12); }
			int Assists() { return *cast(int*)(cast(size_t)&this + 8); }
			int Rank() { return *cast(int*)(cast(size_t)&this + 4); }
			int Kills() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrSummaryHelper.MVPAward) MVPAwards() { return *cast(ScriptArray!(TrSummaryHelper.MVPAward)*)(cast(size_t)cast(void*)this + 1228); }
			ScriptArray!(TrSummaryHelper.MVPAward) MVPAccolades() { return *cast(ScriptArray!(TrSummaryHelper.MVPAward)*)(cast(size_t)cast(void*)this + 1240); }
			TrSummaryHelper SummaryHelper() { return *cast(TrSummaryHelper*)(cast(size_t)cast(void*)this + 1252); }
			GFxTrScene_MatchSummary.ScoreSlot Scoreboard() { return *cast(GFxTrScene_MatchSummary.ScoreSlot*)(cast(size_t)cast(void*)this + 204); }
			int Team2Score() { return *cast(int*)(cast(size_t)cast(void*)this + 196); }
			int Team1Score() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
			int MatchDate() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
			int MatchDuration() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
			int MatchGameType() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
			int MatchMapId() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
			int MatchId() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
			int WinningTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			GFxObject ScoreboardDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 164); }
			GFxObject AccoladeDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 160); }
			GFxObject AwardDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 156); }
			GFxObject MiscDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 152); }
			int ScoreboardDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			int AccoladeDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int AwardDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			int MiscDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			int SCOREBOARD_SIZE() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
		}
		bool bUseSNS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
		bool bUseSNS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
	}
final:
	int CreditsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63292], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63312], cast(void*)0, cast(void*)0);
	}
	void ClearSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63313], cast(void*)0, cast(void*)0);
	}
	void SummaryReady()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63315], cast(void*)0, cast(void*)0);
	}
	void LoadTeamStatsData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63604], params.ptr, cast(void*)0);
	}
	void LoadTeamAccoladeData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63609], params.ptr, cast(void*)0);
	}
	void LoadTeamScoreboardData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63612], params.ptr, cast(void*)0);
	}
	void LoadTeamMiscData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63615], params.ptr, cast(void*)0);
	}
	void AddAward(int PlayerID, int AwardId, int val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		*cast(int*)&params[4] = AwardId;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63617], params.ptr, cast(void*)0);
	}
	void AddAccolade(int PlayerID, int AccoladeId, int val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		*cast(int*)&params[4] = AccoladeId;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63630], params.ptr, cast(void*)0);
	}
	void AddScoreSlot(ScriptString PlayerName, int Kills, int Assists, int Credits, int Rank)
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
	void AddMiscData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63645], cast(void*)0, cast(void*)0);
	}
	ScriptString FormatResult(int aWinningTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = aWinningTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63647], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63652], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString FindPlayerName(int PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63658], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void PopulateScoreboardDataFromGRI()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63662], cast(void*)0, cast(void*)0);
	}
}

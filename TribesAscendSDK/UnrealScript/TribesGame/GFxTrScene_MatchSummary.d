module UnrealScript.TribesGame.GFxTrScene_MatchSummary;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_MatchSummary : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_MatchSummary")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreditsSort;
			ScriptFunction mInitialize;
			ScriptFunction mClearSummary;
			ScriptFunction mSummaryReady;
			ScriptFunction mLoadTeamStatsData;
			ScriptFunction mLoadTeamAccoladeData;
			ScriptFunction mLoadTeamScoreboardData;
			ScriptFunction mLoadTeamMiscData;
			ScriptFunction mAddAward;
			ScriptFunction mAddAccolade;
			ScriptFunction mAddScoreSlot;
			ScriptFunction mAddMiscData;
			ScriptFunction mFormatResult;
			ScriptFunction mFormatTime;
			ScriptFunction mFindPlayerName;
			ScriptFunction mPopulateScoreboardDataFromGRI;
		}
		public @property static final
		{
			ScriptFunction CreditsSort() { return mCreditsSort ? mCreditsSort : (mCreditsSort = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.CreditsSort")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.Initialize")); }
			ScriptFunction ClearSummary() { return mClearSummary ? mClearSummary : (mClearSummary = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.ClearSummary")); }
			ScriptFunction SummaryReady() { return mSummaryReady ? mSummaryReady : (mSummaryReady = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.SummaryReady")); }
			ScriptFunction LoadTeamStatsData() { return mLoadTeamStatsData ? mLoadTeamStatsData : (mLoadTeamStatsData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.LoadTeamStatsData")); }
			ScriptFunction LoadTeamAccoladeData() { return mLoadTeamAccoladeData ? mLoadTeamAccoladeData : (mLoadTeamAccoladeData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.LoadTeamAccoladeData")); }
			ScriptFunction LoadTeamScoreboardData() { return mLoadTeamScoreboardData ? mLoadTeamScoreboardData : (mLoadTeamScoreboardData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.LoadTeamScoreboardData")); }
			ScriptFunction LoadTeamMiscData() { return mLoadTeamMiscData ? mLoadTeamMiscData : (mLoadTeamMiscData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.LoadTeamMiscData")); }
			ScriptFunction AddAward() { return mAddAward ? mAddAward : (mAddAward = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.AddAward")); }
			ScriptFunction AddAccolade() { return mAddAccolade ? mAddAccolade : (mAddAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.AddAccolade")); }
			ScriptFunction AddScoreSlot() { return mAddScoreSlot ? mAddScoreSlot : (mAddScoreSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.AddScoreSlot")); }
			ScriptFunction AddMiscData() { return mAddMiscData ? mAddMiscData : (mAddMiscData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.AddMiscData")); }
			ScriptFunction FormatResult() { return mFormatResult ? mFormatResult : (mFormatResult = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.FormatResult")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.FormatTime")); }
			ScriptFunction FindPlayerName() { return mFindPlayerName ? mFindPlayerName : (mFindPlayerName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.FindPlayerName")); }
			ScriptFunction PopulateScoreboardDataFromGRI() { return mPopulateScoreboardDataFromGRI ? mPopulateScoreboardDataFromGRI : (mPopulateScoreboardDataFromGRI = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_MatchSummary.PopulateScoreboardDataFromGRI")); }
		}
	}
	struct ScoreSlot
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.GFxTrScene_MatchSummary.ScoreSlot")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.CreditsSort, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ClearSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSummary, cast(void*)0, cast(void*)0);
	}
	void SummaryReady()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SummaryReady, cast(void*)0, cast(void*)0);
	}
	void LoadTeamStatsData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadTeamStatsData, params.ptr, cast(void*)0);
	}
	void LoadTeamAccoladeData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadTeamAccoladeData, params.ptr, cast(void*)0);
	}
	void LoadTeamScoreboardData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadTeamScoreboardData, params.ptr, cast(void*)0);
	}
	void LoadTeamMiscData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadTeamMiscData, params.ptr, cast(void*)0);
	}
	void AddAward(int PlayerID, int AwardId, int val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		*cast(int*)&params[4] = AwardId;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAward, params.ptr, cast(void*)0);
	}
	void AddAccolade(int PlayerID, int AccoladeId, int val)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		*cast(int*)&params[4] = AccoladeId;
		*cast(int*)&params[8] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAccolade, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddScoreSlot, params.ptr, cast(void*)0);
	}
	void AddMiscData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMiscData, cast(void*)0, cast(void*)0);
	}
	ScriptString FormatResult(int aWinningTeam)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = aWinningTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormatResult, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormatTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString FindPlayerName(int PlayerID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPlayerName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void PopulateScoreboardDataFromGRI()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateScoreboardDataFromGRI, cast(void*)0, cast(void*)0);
	}
}

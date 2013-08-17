module UnrealScript.TribesGame.GFxTrScene_MatchSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_MatchSummary : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrScene_MatchSummary")); }
	private static __gshared GFxTrScene_MatchSummary mDefaultProperties;
	@property final static GFxTrScene_MatchSummary DefaultProperties() { mixin(MGDPC("GFxTrScene_MatchSummary", "GFxTrScene_MatchSummary TribesGame.Default__GFxTrScene_MatchSummary")); }
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
			ScriptFunction CreditsSort() { mixin(MGF("mCreditsSort", "Function TribesGame.GFxTrScene_MatchSummary.CreditsSort")); }
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrScene_MatchSummary.Initialize")); }
			ScriptFunction ClearSummary() { mixin(MGF("mClearSummary", "Function TribesGame.GFxTrScene_MatchSummary.ClearSummary")); }
			ScriptFunction SummaryReady() { mixin(MGF("mSummaryReady", "Function TribesGame.GFxTrScene_MatchSummary.SummaryReady")); }
			ScriptFunction LoadTeamStatsData() { mixin(MGF("mLoadTeamStatsData", "Function TribesGame.GFxTrScene_MatchSummary.LoadTeamStatsData")); }
			ScriptFunction LoadTeamAccoladeData() { mixin(MGF("mLoadTeamAccoladeData", "Function TribesGame.GFxTrScene_MatchSummary.LoadTeamAccoladeData")); }
			ScriptFunction LoadTeamScoreboardData() { mixin(MGF("mLoadTeamScoreboardData", "Function TribesGame.GFxTrScene_MatchSummary.LoadTeamScoreboardData")); }
			ScriptFunction LoadTeamMiscData() { mixin(MGF("mLoadTeamMiscData", "Function TribesGame.GFxTrScene_MatchSummary.LoadTeamMiscData")); }
			ScriptFunction AddAward() { mixin(MGF("mAddAward", "Function TribesGame.GFxTrScene_MatchSummary.AddAward")); }
			ScriptFunction AddAccolade() { mixin(MGF("mAddAccolade", "Function TribesGame.GFxTrScene_MatchSummary.AddAccolade")); }
			ScriptFunction AddScoreSlot() { mixin(MGF("mAddScoreSlot", "Function TribesGame.GFxTrScene_MatchSummary.AddScoreSlot")); }
			ScriptFunction AddMiscData() { mixin(MGF("mAddMiscData", "Function TribesGame.GFxTrScene_MatchSummary.AddMiscData")); }
			ScriptFunction FormatResult() { mixin(MGF("mFormatResult", "Function TribesGame.GFxTrScene_MatchSummary.FormatResult")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function TribesGame.GFxTrScene_MatchSummary.FormatTime")); }
			ScriptFunction FindPlayerName() { mixin(MGF("mFindPlayerName", "Function TribesGame.GFxTrScene_MatchSummary.FindPlayerName")); }
			ScriptFunction PopulateScoreboardDataFromGRI() { mixin(MGF("mPopulateScoreboardDataFromGRI", "Function TribesGame.GFxTrScene_MatchSummary.PopulateScoreboardDataFromGRI")); }
		}
	}
	struct ScoreSlot
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.GFxTrScene_MatchSummary.ScoreSlot")); }
		@property final auto ref
		{
			ScriptString PlayerName() { mixin(MGPS("ScriptString", 20)); }
			int PlayerID() { mixin(MGPS("int", 16)); }
			int Credits() { mixin(MGPS("int", 12)); }
			int Assists() { mixin(MGPS("int", 8)); }
			int Rank() { mixin(MGPS("int", 4)); }
			int Kills() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrSummaryHelper.MVPAward) MVPAwards() { mixin(MGPC("ScriptArray!(TrSummaryHelper.MVPAward)", 1228)); }
			ScriptArray!(TrSummaryHelper.MVPAward) MVPAccolades() { mixin(MGPC("ScriptArray!(TrSummaryHelper.MVPAward)", 1240)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__CreditsSort__Delegate'!
			TrSummaryHelper SummaryHelper() { mixin(MGPC("TrSummaryHelper", 1252)); }
			GFxTrScene_MatchSummary.ScoreSlot Scoreboard() { mixin(MGPC("GFxTrScene_MatchSummary.ScoreSlot", 204)); }
			int Team2Score() { mixin(MGPC("int", 196)); }
			int Team1Score() { mixin(MGPC("int", 192)); }
			int MatchDate() { mixin(MGPC("int", 188)); }
			int MatchDuration() { mixin(MGPC("int", 184)); }
			int MatchGameType() { mixin(MGPC("int", 180)); }
			int MatchMapId() { mixin(MGPC("int", 176)); }
			int MatchId() { mixin(MGPC("int", 172)); }
			int WinningTeam() { mixin(MGPC("int", 168)); }
			GFxObject ScoreboardDataList() { mixin(MGPC("GFxObject", 164)); }
			GFxObject AccoladeDataList() { mixin(MGPC("GFxObject", 160)); }
			GFxObject AwardDataList() { mixin(MGPC("GFxObject", 156)); }
			GFxObject MiscDataList() { mixin(MGPC("GFxObject", 152)); }
			int ScoreboardDataCount() { mixin(MGPC("int", 148)); }
			int AccoladeDataCount() { mixin(MGPC("int", 144)); }
			int AwardDataCount() { mixin(MGPC("int", 140)); }
			int MiscDataCount() { mixin(MGPC("int", 136)); }
			int SCOREBOARD_SIZE() { mixin(MGPC("int", 132)); }
		}
		bool bUseSNS() { mixin(MGBPC(200, 0x1)); }
		bool bUseSNS(bool val) { mixin(MSBPC(200, 0x1)); }
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

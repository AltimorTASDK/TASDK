module UnrealScript.TribesGame.TrScoreboard;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrScoreboard : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrScoreboard")); }
	private static __gshared TrScoreboard mDefaultProperties;
	@property final static TrScoreboard DefaultProperties() { mixin(MGDPC("TrScoreboard", "TrScoreboard TribesGame.Default__TrScoreboard")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreditsSort;
			ScriptFunction mAssistsSort;
			ScriptFunction mKillsSort;
			ScriptFunction mInitialize;
			ScriptFunction mShow;
			ScriptFunction mHide;
			ScriptFunction mConfigScoreboard;
			ScriptFunction mTick;
			ScriptFunction mUpdatePRILists;
			ScriptFunction mGetBestSortArray;
			ScriptFunction mGetRank;
			ScriptFunction mClearSlot;
			ScriptFunction mUpdateSlot;
			ScriptFunction mFormatTime;
			ScriptFunction mUpdateHeaders;
			ScriptFunction mIsValidScoreboardPlayer;
		}
		public @property static final
		{
			ScriptFunction CreditsSort() { mixin(MGF("mCreditsSort", "Function TribesGame.TrScoreboard.CreditsSort")); }
			ScriptFunction AssistsSort() { mixin(MGF("mAssistsSort", "Function TribesGame.TrScoreboard.AssistsSort")); }
			ScriptFunction KillsSort() { mixin(MGF("mKillsSort", "Function TribesGame.TrScoreboard.KillsSort")); }
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrScoreboard.Initialize")); }
			ScriptFunction Show() { mixin(MGF("mShow", "Function TribesGame.TrScoreboard.Show")); }
			ScriptFunction Hide() { mixin(MGF("mHide", "Function TribesGame.TrScoreboard.Hide")); }
			ScriptFunction ConfigScoreboard() { mixin(MGF("mConfigScoreboard", "Function TribesGame.TrScoreboard.ConfigScoreboard")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrScoreboard.Tick")); }
			ScriptFunction UpdatePRILists() { mixin(MGF("mUpdatePRILists", "Function TribesGame.TrScoreboard.UpdatePRILists")); }
			ScriptFunction GetBestSortArray() { mixin(MGF("mGetBestSortArray", "Function TribesGame.TrScoreboard.GetBestSortArray")); }
			ScriptFunction GetRank() { mixin(MGF("mGetRank", "Function TribesGame.TrScoreboard.GetRank")); }
			ScriptFunction ClearSlot() { mixin(MGF("mClearSlot", "Function TribesGame.TrScoreboard.ClearSlot")); }
			ScriptFunction UpdateSlot() { mixin(MGF("mUpdateSlot", "Function TribesGame.TrScoreboard.UpdateSlot")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function TribesGame.TrScoreboard.FormatTime")); }
			ScriptFunction UpdateHeaders() { mixin(MGF("mUpdateHeaders", "Function TribesGame.TrScoreboard.UpdateHeaders")); }
			ScriptFunction IsValidScoreboardPlayer() { mixin(MGF("mIsValidScoreboardPlayer", "Function TribesGame.TrScoreboard.IsValidScoreboardPlayer")); }
		}
	}
	struct TrScoreboardState
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrScoreboard.TrScoreboardState")); }
		@property final auto ref
		{
			int DiamondSwordScore() { mixin(MGPS("int", 8)); }
			int BloodEagleScore() { mixin(MGPS("int", 4)); }
			int RemainingTime() { mixin(MGPS("int", 0)); }
		}
	}
	struct TrScoreSlot
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrScoreboard.TrScoreSlot")); }
		@property final auto ref
		{
			int RankIcon() { mixin(MGPS("int", 44)); }
			int Rank() { mixin(MGPS("int", 40)); }
			int Ping() { mixin(MGPS("int", 36)); }
			int Score() { mixin(MGPS("int", 32)); }
			int Assists() { mixin(MGPS("int", 28)); }
			int Kills() { mixin(MGPS("int", 24)); }
			ScriptString ClassAbb() { mixin(MGPS("ScriptString", 12)); }
			ScriptString PlayerName() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { mixin(MGPC("GfxTrHud", 100)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__CreditsSort__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__AssistsSort__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__KillsSort__Delegate'!
			TrPlayerController TrPC() { mixin(MGPC("TrPlayerController", 1652)); }
			TrScoreboard.TrScoreboardState PreviousState() { mixin(MGPC("TrScoreboard.TrScoreboardState", 1640)); }
			TrScoreboard.TrScoreSlot ScoreboardSlots() { mixin(MGPC("TrScoreboard.TrScoreSlot", 104)); }
			int DSIndex() { mixin(MGPC("int", 92)); }
			int BEIndex() { mixin(MGPC("int", 88)); }
			int DSOffset() { mixin(MGPC("int", 84)); }
			int PrevActiveSlot() { mixin(MGPC("int", 80)); }
			int PrevDSSLots() { mixin(MGPC("int", 76)); }
			int PrevBESlots() { mixin(MGPC("int", 72)); }
			int DSSlots() { mixin(MGPC("int", 68)); }
			int BESlots() { mixin(MGPC("int", 64)); }
			int MAX_PLAYER_INDEX() { mixin(MGPC("int", 60)); }
		}
		bool bIsActive() { mixin(MGBPC(96, 0x8)); }
		bool bIsActive(bool val) { mixin(MSBPC(96, 0x8)); }
		bool bCheckPing() { mixin(MGBPC(96, 0x10)); }
		bool bCheckPing(bool val) { mixin(MSBPC(96, 0x10)); }
		bool bInitialized() { mixin(MGBPC(96, 0x4)); }
		bool bInitialized(bool val) { mixin(MSBPC(96, 0x4)); }
		bool bUpdated() { mixin(MGBPC(96, 0x2)); }
		bool bUpdated(bool val) { mixin(MSBPC(96, 0x2)); }
		bool bTeamGame() { mixin(MGBPC(96, 0x1)); }
		bool bTeamGame(bool val) { mixin(MSBPC(96, 0x1)); }
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
	int AssistsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AssistsSort, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int KillsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillsSort, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	void Show(bool bIsTeamGame)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsTeamGame;
		(cast(ScriptObject)this).ProcessEvent(Functions.Show, params.ptr, cast(void*)0);
	}
	void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Hide, cast(void*)0, cast(void*)0);
	}
	void ConfigScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigScoreboard, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void UpdatePRILists(TrGameReplicationInfo TrGRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = TrGRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePRILists, params.ptr, cast(void*)0);
	}
	ScriptArray!(PlayerReplicationInfo) GetBestSortArray(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestSortArray, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(PlayerReplicationInfo)*)&params[12];
	}
	int GetRank(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRank, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool ClearSlot(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool UpdateSlot(int Index, TrPlayerReplicationInfo PRI)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TrPlayerReplicationInfo*)&params[4] = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormatTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void UpdateHeaders(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHeaders, params.ptr, cast(void*)0);
	}
	bool IsValidScoreboardPlayer(TrPlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidScoreboardPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}

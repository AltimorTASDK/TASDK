module UnrealScript.TribesGame.TrScoreboard;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrScoreboard")); }
	private static __gshared TrScoreboard mDefaultProperties;
	@property final static TrScoreboard DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrScoreboard)("TrScoreboard TribesGame.Default__TrScoreboard")); }
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
			ScriptFunction CreditsSort() { return mCreditsSort ? mCreditsSort : (mCreditsSort = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.CreditsSort")); }
			ScriptFunction AssistsSort() { return mAssistsSort ? mAssistsSort : (mAssistsSort = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.AssistsSort")); }
			ScriptFunction KillsSort() { return mKillsSort ? mKillsSort : (mKillsSort = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.KillsSort")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.Initialize")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.Show")); }
			ScriptFunction Hide() { return mHide ? mHide : (mHide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.Hide")); }
			ScriptFunction ConfigScoreboard() { return mConfigScoreboard ? mConfigScoreboard : (mConfigScoreboard = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.ConfigScoreboard")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.Tick")); }
			ScriptFunction UpdatePRILists() { return mUpdatePRILists ? mUpdatePRILists : (mUpdatePRILists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.UpdatePRILists")); }
			ScriptFunction GetBestSortArray() { return mGetBestSortArray ? mGetBestSortArray : (mGetBestSortArray = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.GetBestSortArray")); }
			ScriptFunction GetRank() { return mGetRank ? mGetRank : (mGetRank = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.GetRank")); }
			ScriptFunction ClearSlot() { return mClearSlot ? mClearSlot : (mClearSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.ClearSlot")); }
			ScriptFunction UpdateSlot() { return mUpdateSlot ? mUpdateSlot : (mUpdateSlot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.UpdateSlot")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.FormatTime")); }
			ScriptFunction UpdateHeaders() { return mUpdateHeaders ? mUpdateHeaders : (mUpdateHeaders = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.UpdateHeaders")); }
			ScriptFunction IsValidScoreboardPlayer() { return mIsValidScoreboardPlayer ? mIsValidScoreboardPlayer : (mIsValidScoreboardPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrScoreboard.IsValidScoreboardPlayer")); }
		}
	}
	struct TrScoreboardState
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrScoreboard.TrScoreboardState")); }
		@property final auto ref
		{
			int DiamondSwordScore() { return *cast(int*)(cast(size_t)&this + 8); }
			int BloodEagleScore() { return *cast(int*)(cast(size_t)&this + 4); }
			int RemainingTime() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct TrScoreSlot
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrScoreboard.TrScoreSlot")); }
		@property final auto ref
		{
			int RankIcon() { return *cast(int*)(cast(size_t)&this + 44); }
			int Rank() { return *cast(int*)(cast(size_t)&this + 40); }
			int Ping() { return *cast(int*)(cast(size_t)&this + 36); }
			int Score() { return *cast(int*)(cast(size_t)&this + 32); }
			int Assists() { return *cast(int*)(cast(size_t)&this + 28); }
			int Kills() { return *cast(int*)(cast(size_t)&this + 24); }
			ScriptString ClassAbb() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 100); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 1652); }
			TrScoreboard.TrScoreboardState PreviousState() { return *cast(TrScoreboard.TrScoreboardState*)(cast(size_t)cast(void*)this + 1640); }
			TrScoreboard.TrScoreSlot ScoreboardSlots() { return *cast(TrScoreboard.TrScoreSlot*)(cast(size_t)cast(void*)this + 104); }
			int DSIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			int BEIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int DSOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			int PrevActiveSlot() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int PrevDSSLots() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			int PrevBESlots() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int DSSlots() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int BESlots() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MAX_PLAYER_INDEX() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
		bool bCheckPing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
		bool bCheckPing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool bUpdated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bUpdated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bTeamGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bTeamGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
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

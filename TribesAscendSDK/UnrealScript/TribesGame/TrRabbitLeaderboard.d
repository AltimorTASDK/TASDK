module UnrealScript.TribesGame.TrRabbitLeaderboard;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrRabbitLeaderboard : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRabbitLeaderboard")); }
	private static __gshared TrRabbitLeaderboard mDefaultProperties;
	@property final static TrRabbitLeaderboard DefaultProperties() { mixin(MGDPC("TrRabbitLeaderboard", "TrRabbitLeaderboard TribesGame.Default__TrRabbitLeaderboard")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShow;
			ScriptFunction mHide;
			ScriptFunction mTick;
			ScriptFunction mUpdatePlayers;
			ScriptFunction mUpdateLeaderboard;
			ScriptFunction mUpdateTime;
			ScriptFunction mFormatTime;
			ScriptFunction mForceUpdate;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrRabbitLeaderboard.Initialize")); }
			ScriptFunction Show() { mixin(MGF("mShow", "Function TribesGame.TrRabbitLeaderboard.Show")); }
			ScriptFunction Hide() { mixin(MGF("mHide", "Function TribesGame.TrRabbitLeaderboard.Hide")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrRabbitLeaderboard.Tick")); }
			ScriptFunction UpdatePlayers() { mixin(MGF("mUpdatePlayers", "Function TribesGame.TrRabbitLeaderboard.UpdatePlayers")); }
			ScriptFunction UpdateLeaderboard() { mixin(MGF("mUpdateLeaderboard", "Function TribesGame.TrRabbitLeaderboard.UpdateLeaderboard")); }
			ScriptFunction UpdateTime() { mixin(MGF("mUpdateTime", "Function TribesGame.TrRabbitLeaderboard.UpdateTime")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function TribesGame.TrRabbitLeaderboard.FormatTime")); }
			ScriptFunction ForceUpdate() { mixin(MGF("mForceUpdate", "Function TribesGame.TrRabbitLeaderboard.ForceUpdate")); }
		}
	}
	struct LeaderboardSlot
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrRabbitLeaderboard.LeaderboardSlot")); }
		@property final auto ref
		{
			int Score() { mixin(MGPS("int", 8)); }
			ScriptName PRIName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { mixin(MGPC("GfxTrHud", 72)); }
			TrRabbitLeaderboard.LeaderboardSlot LeaderboardSlots() { mixin(MGPC("TrRabbitLeaderboard.LeaderboardSlot", 80)); }
			TrPlayerController TrPC() { mixin(MGPC("TrPlayerController", 76)); }
			int RemainingTime() { mixin(MGPC("int", 64)); }
			int PrevSlots() { mixin(MGPC("int", 60)); }
		}
		bool bIsActive() { mixin(MGBPC(68, 0x4)); }
		bool bIsActive(bool val) { mixin(MSBPC(68, 0x4)); }
		bool bInitialized() { mixin(MGBPC(68, 0x2)); }
		bool bInitialized(bool val) { mixin(MSBPC(68, 0x2)); }
		bool bUpdated() { mixin(MGBPC(68, 0x1)); }
		bool bUpdated(bool val) { mixin(MSBPC(68, 0x1)); }
	}
final:
	void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
	}
	void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Show, cast(void*)0, cast(void*)0);
	}
	void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Hide, cast(void*)0, cast(void*)0);
	}
	void Tick()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, cast(void*)0, cast(void*)0);
	}
	void UpdatePlayers(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePlayers, params.ptr, cast(void*)0);
	}
	bool UpdateLeaderboard(int Index, ScriptName PRIName, ScriptString PlayerName, int Score)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptName*)&params[4] = PRIName;
		*cast(ScriptString*)&params[12] = PlayerName;
		*cast(int*)&params[24] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLeaderboard, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void UpdateTime(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTime, params.ptr, cast(void*)0);
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormatTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ForceUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceUpdate, cast(void*)0, cast(void*)0);
	}
}

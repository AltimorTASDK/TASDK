module UnrealScript.TribesGame.TrRabbitLeaderboard;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrRabbitLeaderboard : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRabbitLeaderboard")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.Initialize")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.Show")); }
			ScriptFunction Hide() { return mHide ? mHide : (mHide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.Hide")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.Tick")); }
			ScriptFunction UpdatePlayers() { return mUpdatePlayers ? mUpdatePlayers : (mUpdatePlayers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.UpdatePlayers")); }
			ScriptFunction UpdateLeaderboard() { return mUpdateLeaderboard ? mUpdateLeaderboard : (mUpdateLeaderboard = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.UpdateLeaderboard")); }
			ScriptFunction UpdateTime() { return mUpdateTime ? mUpdateTime : (mUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.UpdateTime")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.FormatTime")); }
			ScriptFunction ForceUpdate() { return mForceUpdate ? mForceUpdate : (mForceUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitLeaderboard.ForceUpdate")); }
		}
	}
	struct LeaderboardSlot
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrRabbitLeaderboard.LeaderboardSlot")); }
		@property final auto ref
		{
			int Score() { return *cast(int*)(cast(size_t)&this + 8); }
			ScriptName PRIName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 72); }
			TrRabbitLeaderboard.LeaderboardSlot LeaderboardSlots() { return *cast(TrRabbitLeaderboard.LeaderboardSlot*)(cast(size_t)cast(void*)this + 80); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 76); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int PrevSlots() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bUpdated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bUpdated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
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

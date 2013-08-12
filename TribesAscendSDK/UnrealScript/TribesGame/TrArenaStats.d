module UnrealScript.TribesGame.TrArenaStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrArenaStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArenaStats")); }
	private static __gshared TrArenaStats mDefaultProperties;
	@property final static TrArenaStats DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArenaStats)("TrArenaStats TribesGame.Default__TrArenaStats")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShow;
			ScriptFunction mHide;
			ScriptFunction mTick;
			ScriptFunction mUpdateTeam;
			ScriptFunction mUpdateTeamScore;
			ScriptFunction mSetManGraphicState;
			ScriptFunction mUpdateRound;
			ScriptFunction mUpdateTime;
			ScriptFunction mFormatTime;
			ScriptFunction mForceUpdate;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.Initialize")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.Show")); }
			ScriptFunction Hide() { return mHide ? mHide : (mHide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.Hide")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.Tick")); }
			ScriptFunction UpdateTeam() { return mUpdateTeam ? mUpdateTeam : (mUpdateTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.UpdateTeam")); }
			ScriptFunction UpdateTeamScore() { return mUpdateTeamScore ? mUpdateTeamScore : (mUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.UpdateTeamScore")); }
			ScriptFunction SetManGraphicState() { return mSetManGraphicState ? mSetManGraphicState : (mSetManGraphicState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.SetManGraphicState")); }
			ScriptFunction UpdateRound() { return mUpdateRound ? mUpdateRound : (mUpdateRound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.UpdateRound")); }
			ScriptFunction UpdateTime() { return mUpdateTime ? mUpdateTime : (mUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.UpdateTime")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.FormatTime")); }
			ScriptFunction ForceUpdate() { return mForceUpdate ? mForceUpdate : (mForceUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaStats.ForceUpdate")); }
		}
	}
	static struct Constants
	{
		enum MAX_NUM_ARENA_PLAYERS_PER_TEAM = 8;
	}
	enum ManGraphicState : ubyte
	{
		ManGraphic_Hidden = 0,
		ManGraphic_HasSpawnsLeft = 1,
		ManGraphic_OutOfSpawns = 2,
		ManGraphic_CrossedOffList = 3,
		ManGraphic_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 96); }
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 92); }
			int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			TrArenaStats.ManGraphicState FriendlyManGraphics() { return *cast(TrArenaStats.ManGraphicState*)(cast(size_t)cast(void*)this + 100); }
			TrArenaStats.ManGraphicState EnemyManGraphics() { return *cast(TrArenaStats.ManGraphicState*)(cast(size_t)cast(void*)this + 108); }
			int RoundScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int RoundNum() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
		bool bForcingUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bForcingUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
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
	void UpdateTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeam, cast(void*)0, cast(void*)0);
	}
	void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeamScore, params.ptr, cast(void*)0);
	}
	void SetManGraphicState(bool bFriendly, int Index, TrArenaStats.ManGraphicState NewState)
	{
		ubyte params[9];
		params[] = 0;
		*cast(bool*)params.ptr = bFriendly;
		*cast(int*)&params[4] = Index;
		*cast(TrArenaStats.ManGraphicState*)&params[8] = NewState;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetManGraphicState, params.ptr, cast(void*)0);
	}
	void UpdateRound(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRound, params.ptr, cast(void*)0);
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

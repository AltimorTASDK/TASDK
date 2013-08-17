module UnrealScript.TribesGame.TrArenaStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrArenaStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrArenaStats")()); }
	private static __gshared TrArenaStats mDefaultProperties;
	@property final static TrArenaStats DefaultProperties() { mixin(MGDPC!(TrArenaStats, "TrArenaStats TribesGame.Default__TrArenaStats")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrArenaStats.Initialize")()); }
			ScriptFunction Show() { mixin(MGF!("mShow", "Function TribesGame.TrArenaStats.Show")()); }
			ScriptFunction Hide() { mixin(MGF!("mHide", "Function TribesGame.TrArenaStats.Hide")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrArenaStats.Tick")()); }
			ScriptFunction UpdateTeam() { mixin(MGF!("mUpdateTeam", "Function TribesGame.TrArenaStats.UpdateTeam")()); }
			ScriptFunction UpdateTeamScore() { mixin(MGF!("mUpdateTeamScore", "Function TribesGame.TrArenaStats.UpdateTeamScore")()); }
			ScriptFunction SetManGraphicState() { mixin(MGF!("mSetManGraphicState", "Function TribesGame.TrArenaStats.SetManGraphicState")()); }
			ScriptFunction UpdateRound() { mixin(MGF!("mUpdateRound", "Function TribesGame.TrArenaStats.UpdateRound")()); }
			ScriptFunction UpdateTime() { mixin(MGF!("mUpdateTime", "Function TribesGame.TrArenaStats.UpdateTime")()); }
			ScriptFunction FormatTime() { mixin(MGF!("mFormatTime", "Function TribesGame.TrArenaStats.FormatTime")()); }
			ScriptFunction ForceUpdate() { mixin(MGF!("mForceUpdate", "Function TribesGame.TrArenaStats.ForceUpdate")()); }
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
			int MyTeam() { mixin(MGPC!("int", 60)()); }
			TrPlayerController TrPC() { mixin(MGPC!("TrPlayerController", 96)()); }
			GfxTrHud m_MoviePlayer() { mixin(MGPC!("GfxTrHud", 92)()); }
			int TeamScore() { mixin(MGPC!("int", 72)()); }
			TrArenaStats.ManGraphicState FriendlyManGraphics() { mixin(MGPC!("TrArenaStats.ManGraphicState", 100)()); }
			TrArenaStats.ManGraphicState EnemyManGraphics() { mixin(MGPC!("TrArenaStats.ManGraphicState", 108)()); }
			int RoundScore() { mixin(MGPC!("int", 80)()); }
			int RoundNum() { mixin(MGPC!("int", 88)()); }
			int RemainingTime() { mixin(MGPC!("int", 64)()); }
		}
		bool bIsActive() { mixin(MGBPC!(68, 0x1)()); }
		bool bIsActive(bool val) { mixin(MSBPC!(68, 0x1)()); }
		bool bForcingUpdate() { mixin(MGBPC!(68, 0x2)()); }
		bool bForcingUpdate(bool val) { mixin(MSBPC!(68, 0x2)()); }
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

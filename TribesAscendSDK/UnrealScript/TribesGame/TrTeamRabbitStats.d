module UnrealScript.TribesGame.TrTeamRabbitStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrTeamRabbitStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTeamRabbitStats")()); }
	private static __gshared TrTeamRabbitStats mDefaultProperties;
	@property final static TrTeamRabbitStats DefaultProperties() { mixin(MGDPC!(TrTeamRabbitStats, "TrTeamRabbitStats TribesGame.Default__TrTeamRabbitStats")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShow;
			ScriptFunction mHide;
			ScriptFunction mTick;
			ScriptFunction mUpdateTeam;
			ScriptFunction mUpdateFlagStatus;
			ScriptFunction mUpdateTeamScore;
			ScriptFunction mUpdateTime;
			ScriptFunction mFormatTime;
			ScriptFunction mForceUpdate;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrTeamRabbitStats.Initialize")()); }
			ScriptFunction Show() { mixin(MGF!("mShow", "Function TribesGame.TrTeamRabbitStats.Show")()); }
			ScriptFunction Hide() { mixin(MGF!("mHide", "Function TribesGame.TrTeamRabbitStats.Hide")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrTeamRabbitStats.Tick")()); }
			ScriptFunction UpdateTeam() { mixin(MGF!("mUpdateTeam", "Function TribesGame.TrTeamRabbitStats.UpdateTeam")()); }
			ScriptFunction UpdateFlagStatus() { mixin(MGF!("mUpdateFlagStatus", "Function TribesGame.TrTeamRabbitStats.UpdateFlagStatus")()); }
			ScriptFunction UpdateTeamScore() { mixin(MGF!("mUpdateTeamScore", "Function TribesGame.TrTeamRabbitStats.UpdateTeamScore")()); }
			ScriptFunction UpdateTime() { mixin(MGF!("mUpdateTime", "Function TribesGame.TrTeamRabbitStats.UpdateTime")()); }
			ScriptFunction FormatTime() { mixin(MGF!("mFormatTime", "Function TribesGame.TrTeamRabbitStats.FormatTime")()); }
			ScriptFunction ForceUpdate() { mixin(MGF!("mForceUpdate", "Function TribesGame.TrTeamRabbitStats.ForceUpdate")()); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { mixin(MGPC!("GfxTrHud", 84)()); }
			TrPlayerController TrPC() { mixin(MGPC!("TrPlayerController", 88)()); }
			int TeamHoldingFlag() { mixin(MGPC!("int", 80)()); }
			int TeamScore() { mixin(MGPC!("int", 72)()); }
			int RemainingTime() { mixin(MGPC!("int", 64)()); }
			int MyTeam() { mixin(MGPC!("int", 60)()); }
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
	void UpdateFlagStatus(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFlagStatus, params.ptr, cast(void*)0);
	}
	void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeamScore, params.ptr, cast(void*)0);
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

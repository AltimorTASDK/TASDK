module UnrealScript.TribesGame.TrDaDStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrDaDStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDaDStats")); }
	private static __gshared TrDaDStats mDefaultProperties;
	@property final static TrDaDStats DefaultProperties() { mixin(MGDPC("TrDaDStats", "TrDaDStats TribesGame.Default__TrDaDStats")); }
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
			ScriptFunction mUpdateTime;
			ScriptFunction mFormatTime;
			ScriptFunction mForceUpdate;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrDaDStats.Initialize")); }
			ScriptFunction Show() { mixin(MGF("mShow", "Function TribesGame.TrDaDStats.Show")); }
			ScriptFunction Hide() { mixin(MGF("mHide", "Function TribesGame.TrDaDStats.Hide")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrDaDStats.Tick")); }
			ScriptFunction UpdateTeam() { mixin(MGF("mUpdateTeam", "Function TribesGame.TrDaDStats.UpdateTeam")); }
			ScriptFunction UpdateTeamScore() { mixin(MGF("mUpdateTeamScore", "Function TribesGame.TrDaDStats.UpdateTeamScore")); }
			ScriptFunction UpdateTime() { mixin(MGF("mUpdateTime", "Function TribesGame.TrDaDStats.UpdateTime")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function TribesGame.TrDaDStats.FormatTime")); }
			ScriptFunction ForceUpdate() { mixin(MGF("mForceUpdate", "Function TribesGame.TrDaDStats.ForceUpdate")); }
		}
	}
	struct DaDScoreInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrDaDStats.DaDScoreInfo")); }
		@property final
		{
			auto ref
			{
				int CoreHealthPct() { mixin(MGPS("int", 12)); }
				int GeneratorRemainingTime() { mixin(MGPS("int", 4)); }
			}
			bool bCapacitorCOnline() { mixin(MGBPS(8, 0x4)); }
			bool bCapacitorCOnline(bool val) { mixin(MSBPS(8, 0x4)); }
			bool bCapacitorBOnline() { mixin(MGBPS(8, 0x2)); }
			bool bCapacitorBOnline(bool val) { mixin(MSBPS(8, 0x2)); }
			bool bCapacitorAOnline() { mixin(MGBPS(8, 0x1)); }
			bool bCapacitorAOnline(bool val) { mixin(MSBPS(8, 0x1)); }
			bool bGeneratorOnline() { mixin(MGBPS(0, 0x1)); }
			bool bGeneratorOnline(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			TrDaDStats.DaDScoreInfo EnemyDaDScore() { mixin(MGPC("TrDaDStats.DaDScoreInfo", 116)); }
			TrDaDStats.DaDScoreInfo FriendlyDaDScore() { mixin(MGPC("TrDaDStats.DaDScoreInfo", 100)); }
			TrPlayerController TrPC() { mixin(MGPC("TrPlayerController", 96)); }
			GfxTrHud m_MoviePlayer() { mixin(MGPC("GfxTrHud", 92)); }
			int RoundNum() { mixin(MGPC("int", 88)); }
			int RoundScore() { mixin(MGPC("int", 80)); }
			int TeamScore() { mixin(MGPC("int", 72)); }
			int RemainingTime() { mixin(MGPC("int", 64)); }
			int MyTeam() { mixin(MGPC("int", 60)); }
		}
		bool bForcingUpdate() { mixin(MGBPC(68, 0x2)); }
		bool bForcingUpdate(bool val) { mixin(MSBPC(68, 0x2)); }
		bool bIsActive() { mixin(MGBPC(68, 0x1)); }
		bool bIsActive(bool val) { mixin(MSBPC(68, 0x1)); }
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

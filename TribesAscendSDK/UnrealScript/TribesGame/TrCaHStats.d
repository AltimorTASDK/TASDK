module UnrealScript.TribesGame.TrCaHStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrCaHCapturePoint;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrCaHStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrCaHStats")); }
	private static __gshared TrCaHStats mDefaultProperties;
	@property final static TrCaHStats DefaultProperties() { mixin(MGDPC("TrCaHStats", "TrCaHStats TribesGame.Default__TrCaHStats")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReadyToPlay;
			ScriptFunction mInitialize;
			ScriptFunction mShow;
			ScriptFunction mHide;
			ScriptFunction mTick;
			ScriptFunction mUpdateTeam;
			ScriptFunction mUpdateCapturePointData;
			ScriptFunction mUpdateTeamScore;
			ScriptFunction mFormatTime;
			ScriptFunction mForceUpdate;
		}
		public @property static final
		{
			ScriptFunction ReadyToPlay() { mixin(MGF("mReadyToPlay", "Function TribesGame.TrCaHStats.ReadyToPlay")); }
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrCaHStats.Initialize")); }
			ScriptFunction Show() { mixin(MGF("mShow", "Function TribesGame.TrCaHStats.Show")); }
			ScriptFunction Hide() { mixin(MGF("mHide", "Function TribesGame.TrCaHStats.Hide")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrCaHStats.Tick")); }
			ScriptFunction UpdateTeam() { mixin(MGF("mUpdateTeam", "Function TribesGame.TrCaHStats.UpdateTeam")); }
			ScriptFunction UpdateCapturePointData() { mixin(MGF("mUpdateCapturePointData", "Function TribesGame.TrCaHStats.UpdateCapturePointData")); }
			ScriptFunction UpdateTeamScore() { mixin(MGF("mUpdateTeamScore", "Function TribesGame.TrCaHStats.UpdateTeamScore")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function TribesGame.TrCaHStats.FormatTime")); }
			ScriptFunction ForceUpdate() { mixin(MGF("mForceUpdate", "Function TribesGame.TrCaHStats.ForceUpdate")); }
		}
	}
	struct CapturePointInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrCaHStats.CapturePointInfo")); }
		@property final auto ref
		{
			float RemainingHeldTime() { mixin(MGPS("float", 24)); }
			int PctHeld() { mixin(MGPS("int", 20)); }
			int PointOwnershipType() { mixin(MGPS("int", 16)); }
			ScriptString LabelString() { mixin(MGPS("ScriptString", 4)); }
			TrObject.CaHCapturePointLabel PointLabel() { mixin(MGPS("TrObject.CaHCapturePointLabel", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrCaHStats.CapturePointInfo) m_CapturePointData() { mixin(MGPC("ScriptArray!(TrCaHStats.CapturePointInfo)", 108)); }
			ScriptArray!(TrCaHCapturePoint) m_CapturePoints() { mixin(MGPC("ScriptArray!(TrCaHCapturePoint)", 120)); }
			TrPlayerController TrPC() { mixin(MGPC("TrPlayerController", 104)); }
			GfxTrHud m_MoviePlayer() { mixin(MGPC("GfxTrHud", 100)); }
			int RoundNum() { mixin(MGPC("int", 96)); }
			int NumCapturePointsHeld() { mixin(MGPC("int", 88)); }
			int RoundScore() { mixin(MGPC("int", 80)); }
			int TeamScore() { mixin(MGPC("int", 72)); }
			int RemainingTime() { mixin(MGPC("int", 64)); }
			int MyTeam() { mixin(MGPC("int", 60)); }
		}
		bool bForceUpdateNextTick() { mixin(MGBPC(68, 0x4)); }
		bool bForceUpdateNextTick(bool val) { mixin(MSBPC(68, 0x4)); }
		bool bForcingUpdate() { mixin(MGBPC(68, 0x2)); }
		bool bForcingUpdate(bool val) { mixin(MSBPC(68, 0x2)); }
		bool bIsActive() { mixin(MGBPC(68, 0x1)); }
		bool bIsActive(bool val) { mixin(MSBPC(68, 0x1)); }
	}
final:
	void ReadyToPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadyToPlay, cast(void*)0, cast(void*)0);
	}
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
	void UpdateCapturePointData(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCapturePointData, params.ptr, cast(void*)0);
	}
	void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeamScore, params.ptr, cast(void*)0);
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

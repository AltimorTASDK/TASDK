module UnrealScript.TribesGame.TrHUDTeamCTFStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrHUDTeamCTFStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrHUDTeamCTFStats")); }
	private static __gshared TrHUDTeamCTFStats mDefaultProperties;
	@property final static TrHUDTeamCTFStats DefaultProperties() { mixin(MGDPC("TrHUDTeamCTFStats", "TrHUDTeamCTFStats TribesGame.Default__TrHUDTeamCTFStats")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShow;
			ScriptFunction mHide;
			ScriptFunction mTick;
			ScriptFunction mUpdateTeam;
			ScriptFunction mGetTeamIndex;
			ScriptFunction mUpdateFlagStatus;
			ScriptFunction mUpdateGeneratorStatus;
			ScriptFunction mUpdateTeamScore;
			ScriptFunction mUpdateTime;
			ScriptFunction mFormatTime;
			ScriptFunction mForceUpdate;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.TrHUDTeamCTFStats.Initialize")); }
			ScriptFunction Show() { mixin(MGF("mShow", "Function TribesGame.TrHUDTeamCTFStats.Show")); }
			ScriptFunction Hide() { mixin(MGF("mHide", "Function TribesGame.TrHUDTeamCTFStats.Hide")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrHUDTeamCTFStats.Tick")); }
			ScriptFunction UpdateTeam() { mixin(MGF("mUpdateTeam", "Function TribesGame.TrHUDTeamCTFStats.UpdateTeam")); }
			ScriptFunction GetTeamIndex() { mixin(MGF("mGetTeamIndex", "Function TribesGame.TrHUDTeamCTFStats.GetTeamIndex")); }
			ScriptFunction UpdateFlagStatus() { mixin(MGF("mUpdateFlagStatus", "Function TribesGame.TrHUDTeamCTFStats.UpdateFlagStatus")); }
			ScriptFunction UpdateGeneratorStatus() { mixin(MGF("mUpdateGeneratorStatus", "Function TribesGame.TrHUDTeamCTFStats.UpdateGeneratorStatus")); }
			ScriptFunction UpdateTeamScore() { mixin(MGF("mUpdateTeamScore", "Function TribesGame.TrHUDTeamCTFStats.UpdateTeamScore")); }
			ScriptFunction UpdateTime() { mixin(MGF("mUpdateTime", "Function TribesGame.TrHUDTeamCTFStats.UpdateTime")); }
			ScriptFunction FormatTime() { mixin(MGF("mFormatTime", "Function TribesGame.TrHUDTeamCTFStats.FormatTime")); }
			ScriptFunction ForceUpdate() { mixin(MGF("mForceUpdate", "Function TribesGame.TrHUDTeamCTFStats.ForceUpdate")); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { mixin(MGPC("GfxTrHud", 116)); }
			TrPlayerController TrPC() { mixin(MGPC("TrPlayerController", 120)); }
			PlayerReplicationInfo FlagHolderPRI() { mixin(MGPC("PlayerReplicationInfo", 108)); }
			ubyte bEmptyFlagStatus() { mixin(MGPC("ubyte", 106)); }
			UTGameReplicationInfo.EFlagState FlagState() { mixin(MGPC("UTGameReplicationInfo.EFlagState", 104)); }
			int GeneratorDowntime() { mixin(MGPC("int", 96)); }
			int GeneratorPower() { mixin(MGPC("int", 88)); }
			int TeamScore() { mixin(MGPC("int", 80)); }
			int FlagReturnTime() { mixin(MGPC("int", 72)); }
			int RemainingTime() { mixin(MGPC("int", 64)); }
			int MyTeam() { mixin(MGPC("int", 60)); }
		}
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
	int GetTeamIndex(int I)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = I;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void UpdateFlagStatus(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFlagStatus, params.ptr, cast(void*)0);
	}
	void UpdateGeneratorStatus(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGeneratorStatus, params.ptr, cast(void*)0);
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

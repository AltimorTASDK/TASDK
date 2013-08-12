module UnrealScript.TribesGame.TrHUDTeamCTFStats;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrHUDTeamCTFStats")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.Initialize")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.Show")); }
			ScriptFunction Hide() { return mHide ? mHide : (mHide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.Hide")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.Tick")); }
			ScriptFunction UpdateTeam() { return mUpdateTeam ? mUpdateTeam : (mUpdateTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.UpdateTeam")); }
			ScriptFunction GetTeamIndex() { return mGetTeamIndex ? mGetTeamIndex : (mGetTeamIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.GetTeamIndex")); }
			ScriptFunction UpdateFlagStatus() { return mUpdateFlagStatus ? mUpdateFlagStatus : (mUpdateFlagStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.UpdateFlagStatus")); }
			ScriptFunction UpdateGeneratorStatus() { return mUpdateGeneratorStatus ? mUpdateGeneratorStatus : (mUpdateGeneratorStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.UpdateGeneratorStatus")); }
			ScriptFunction UpdateTeamScore() { return mUpdateTeamScore ? mUpdateTeamScore : (mUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.UpdateTeamScore")); }
			ScriptFunction UpdateTime() { return mUpdateTime ? mUpdateTime : (mUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.UpdateTime")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.FormatTime")); }
			ScriptFunction ForceUpdate() { return mForceUpdate ? mForceUpdate : (mForceUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeamCTFStats.ForceUpdate")); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 116); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 120); }
			PlayerReplicationInfo FlagHolderPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 108); }
			ubyte bEmptyFlagStatus() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 106); }
			UTGameReplicationInfo.EFlagState FlagState() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 104); }
			int GeneratorDowntime() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			int GeneratorPower() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int FlagReturnTime() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
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

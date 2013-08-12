module UnrealScript.TribesGame.TrTeamRabbitStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrTeamRabbitStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTeamRabbitStats")); }
	private static __gshared TrTeamRabbitStats mDefaultProperties;
	@property final static TrTeamRabbitStats DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrTeamRabbitStats)("TrTeamRabbitStats TribesGame.Default__TrTeamRabbitStats")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.Initialize")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.Show")); }
			ScriptFunction Hide() { return mHide ? mHide : (mHide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.Hide")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.Tick")); }
			ScriptFunction UpdateTeam() { return mUpdateTeam ? mUpdateTeam : (mUpdateTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.UpdateTeam")); }
			ScriptFunction UpdateFlagStatus() { return mUpdateFlagStatus ? mUpdateFlagStatus : (mUpdateFlagStatus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.UpdateFlagStatus")); }
			ScriptFunction UpdateTeamScore() { return mUpdateTeamScore ? mUpdateTeamScore : (mUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.UpdateTeamScore")); }
			ScriptFunction UpdateTime() { return mUpdateTime ? mUpdateTime : (mUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.UpdateTime")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.FormatTime")); }
			ScriptFunction ForceUpdate() { return mForceUpdate ? mForceUpdate : (mForceUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTeamRabbitStats.ForceUpdate")); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 84); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 88); }
			int TeamHoldingFlag() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
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

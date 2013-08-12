module UnrealScript.TribesGame.TrDaDStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrDaDStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDStats")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.Initialize")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.Show")); }
			ScriptFunction Hide() { return mHide ? mHide : (mHide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.Hide")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.Tick")); }
			ScriptFunction UpdateTeam() { return mUpdateTeam ? mUpdateTeam : (mUpdateTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.UpdateTeam")); }
			ScriptFunction UpdateTeamScore() { return mUpdateTeamScore ? mUpdateTeamScore : (mUpdateTeamScore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.UpdateTeamScore")); }
			ScriptFunction UpdateTime() { return mUpdateTime ? mUpdateTime : (mUpdateTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.UpdateTime")); }
			ScriptFunction FormatTime() { return mFormatTime ? mFormatTime : (mFormatTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.FormatTime")); }
			ScriptFunction ForceUpdate() { return mForceUpdate ? mForceUpdate : (mForceUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDStats.ForceUpdate")); }
		}
	}
	struct DaDScoreInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDaDStats.DaDScoreInfo")); }
		@property final
		{
			auto ref
			{
				int CoreHealthPct() { return *cast(int*)(cast(size_t)&this + 12); }
				int GeneratorRemainingTime() { return *cast(int*)(cast(size_t)&this + 4); }
			}
			bool bCapacitorCOnline() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x4) != 0; }
			bool bCapacitorCOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x4; } return val; }
			bool bCapacitorBOnline() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
			bool bCapacitorBOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
			bool bCapacitorAOnline() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bCapacitorAOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
			bool bGeneratorOnline() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bGeneratorOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			TrDaDStats.DaDScoreInfo EnemyDaDScore() { return *cast(TrDaDStats.DaDScoreInfo*)(cast(size_t)cast(void*)this + 116); }
			TrDaDStats.DaDScoreInfo FriendlyDaDScore() { return *cast(TrDaDStats.DaDScoreInfo*)(cast(size_t)cast(void*)this + 100); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 96); }
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 92); }
			int RoundNum() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int RoundScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bForcingUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bForcingUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
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

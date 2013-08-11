module UnrealScript.TribesGame.TrDaDStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrDaDStats : UObject
{
	struct DaDScoreInfo
	{
		public @property final auto ref int CoreHealthPct() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __CoreHealthPct[4];
		public @property final bool bCapacitorCOnline() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x4) != 0; }
		public @property final bool bCapacitorCOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x4; } return val; }
		private ubyte __bCapacitorCOnline[4];
		public @property final bool bCapacitorBOnline() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x2) != 0; }
		public @property final bool bCapacitorBOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x2; } return val; }
		private ubyte __bCapacitorBOnline[4];
		public @property final bool bCapacitorAOnline() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bCapacitorAOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bCapacitorAOnline[4];
		public @property final auto ref int GeneratorRemainingTime() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __GeneratorRemainingTime[4];
		public @property final bool bGeneratorOnline() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bGeneratorOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bGeneratorOnline[4];
	}
	public @property final auto ref TrDaDStats.DaDScoreInfo EnemyDaDScore() { return *cast(TrDaDStats.DaDScoreInfo*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref TrDaDStats.DaDScoreInfo FriendlyDaDScore() { return *cast(TrDaDStats.DaDScoreInfo*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int RoundNum() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int RoundScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bForcingUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
	public @property final bool bForcingUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79737], params.ptr, cast(void*)0);
	}
	final void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79740], cast(void*)0, cast(void*)0);
	}
	final void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79741], cast(void*)0, cast(void*)0);
	}
	final void Tick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79742], cast(void*)0, cast(void*)0);
	}
	final void UpdateTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79744], cast(void*)0, cast(void*)0);
	}
	final void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79745], params.ptr, cast(void*)0);
	}
	final void UpdateTime(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79754], params.ptr, cast(void*)0);
	}
	final ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79756], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void ForceUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79762], cast(void*)0, cast(void*)0);
	}
}

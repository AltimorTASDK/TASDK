module UnrealScript.TribesGame.TrArenaStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrArenaStats : UObject
{
public extern(D):
	enum MAX_NUM_ARENA_PLAYERS_PER_TEAM = 8;
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66604], params.ptr, cast(void*)0);
	}
	void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66609], cast(void*)0, cast(void*)0);
	}
	void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66611], cast(void*)0, cast(void*)0);
	}
	void Tick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66612], cast(void*)0, cast(void*)0);
	}
	void UpdateTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66614], cast(void*)0, cast(void*)0);
	}
	void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66615], params.ptr, cast(void*)0);
	}
	void SetManGraphicState(bool bFriendly, int Index, TrArenaStats.ManGraphicState NewState)
	{
		ubyte params[9];
		params[] = 0;
		*cast(bool*)params.ptr = bFriendly;
		*cast(int*)&params[4] = Index;
		*cast(TrArenaStats.ManGraphicState*)&params[8] = NewState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66625], params.ptr, cast(void*)0);
	}
	void UpdateRound(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66633], params.ptr, cast(void*)0);
	}
	void UpdateTime(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66640], params.ptr, cast(void*)0);
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66643], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ForceUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66649], cast(void*)0, cast(void*)0);
	}
}

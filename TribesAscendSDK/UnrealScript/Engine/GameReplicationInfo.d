module UnrealScript.Engine.GameReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface GameReplicationInfo : ReplicationInfo
{
	public @property final auto ref ScriptArray!(PlayerReplicationInfo) PRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptClass GameClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 476); }
	public @property final bool bMatchHasBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
	public @property final bool bMatchHasBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
	public @property final auto ref ScriptArray!(TeamInfo) Teams() { return *cast(ScriptArray!(TeamInfo)*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref Actor Winner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref int TimeLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref int GoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref int RemainingMinute() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref int ElapsedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool r_bFriendlyFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
	public @property final bool r_bFriendlyFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
	public @property final bool bMatchIsOver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
	public @property final bool bMatchIsOver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
	public @property final bool bStopCountDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bStopCountDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	final bool ShouldShowGore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7289], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17769], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17772], params.ptr, cast(void*)0);
	}
	final void ReceivedGameClass()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17774], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17776], cast(void*)0, cast(void*)0);
	}
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17777], cast(void*)0, cast(void*)0);
	}
	final bool OnSameTeam(Actor A, Actor B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(Actor*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17778], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void AddPRI(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17782], params.ptr, cast(void*)0);
	}
	final void RemovePRI(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17785], params.ptr, cast(void*)0);
	}
	final void SetTeam(int Index, TeamInfo TI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TeamInfo*)&params[4] = TI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17788], params.ptr, cast(void*)0);
	}
	final void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17791], cast(void*)0, cast(void*)0);
	}
	final void EndGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17792], cast(void*)0, cast(void*)0);
	}
	final bool IsMultiplayerGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17793], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsCoopMultiplayerGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17795], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

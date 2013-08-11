module UnrealScript.Engine.GameReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface GameReplicationInfo : ReplicationInfo
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(PlayerReplicationInfo) PRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 532); }
			ScriptClass GameClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 476); }
			ScriptArray!(TeamInfo) Teams() { return *cast(ScriptArray!(TeamInfo)*)(cast(size_t)cast(void*)this + 504); }
			ScriptArray!(PlayerReplicationInfo) InactivePRIArray() { return *cast(ScriptArray!(PlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 544); }
			Actor Winner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 528); }
			ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
			int TimeLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
			int GoalScore() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
			int RemainingMinute() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
			int ElapsedTime() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bMatchHasBegun() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bMatchHasBegun(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool r_bFriendlyFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
		bool r_bFriendlyFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
		bool bMatchIsOver() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
		bool bMatchIsOver(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
		bool bStopCountDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bStopCountDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	bool ShouldShowGore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7289], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17769], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17772], params.ptr, cast(void*)0);
	}
	void ReceivedGameClass()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17774], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17776], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17777], cast(void*)0, cast(void*)0);
	}
	bool OnSameTeam(Actor A, Actor B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(Actor*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17778], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddPRI(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17782], params.ptr, cast(void*)0);
	}
	void RemovePRI(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17785], params.ptr, cast(void*)0);
	}
	void SetTeam(int Index, TeamInfo TI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TeamInfo*)&params[4] = TI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17788], params.ptr, cast(void*)0);
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17791], cast(void*)0, cast(void*)0);
	}
	void EndGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17792], cast(void*)0, cast(void*)0);
	}
	bool IsMultiplayerGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17793], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsCoopMultiplayerGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17795], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

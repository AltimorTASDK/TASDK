module UnrealScript.GameFramework.GameCrowdReplicationActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowdReplicationActor : Actor
{
	public @property final auto ref int DestroyAllCount() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bSpawningActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bSpawningActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	public @property final auto ref SeqAct_GameCrowdSpawner Spawner() { return *cast(SeqAct_GameCrowdSpawner*)(cast(size_t)cast(void*)this + 476); }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31500], params.ptr, cast(void*)0);
	}
}

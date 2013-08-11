module UnrealScript.Engine.SeqAct_ActorFactory;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface SeqAct_ActorFactory : SeqAct_Latent
{
	enum EPointSelection : ubyte
	{
		PS_Normal = 0,
		PS_Random = 1,
		PS_Reverse = 2,
		PS_MAX = 3,
	}
	public @property final auto ref ScriptArray!(Actor) SpawnPoints() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptArray!(Vector) SpawnLocations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref ScriptArray!(Vector) SpawnOrientations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float RemainingDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref int SpawnedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref int LastSpawnIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float SpawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref int SpawnCount() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref SeqAct_ActorFactory.EPointSelection PointSelection() { return *cast(SeqAct_ActorFactory.EPointSelection*)(cast(size_t)cast(void*)this + 256); }
	// WARNING: Property 'Factory' has the same name as a defined type!
	public @property final bool bCheckSpawnCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
	public @property final bool bCheckSpawnCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
	public @property final bool bIsSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
	public @property final bool bIsSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25562], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

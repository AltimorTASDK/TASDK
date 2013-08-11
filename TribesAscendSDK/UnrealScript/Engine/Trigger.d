module UnrealScript.Engine.Trigger;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;

extern(C++) interface Trigger : Actor
{
	extern(D) struct CheckpointRecord
	{
		public @property final bool bCollideActors() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bCollideActors[4];
	}
	public @property final bool bRecentlyTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bRecentlyTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	public @property final auto ref float AITriggerDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28019], params.ptr, cast(void*)0);
	}
	final void NotifyTriggered()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28024], cast(void*)0, cast(void*)0);
	}
	final void UnTrigger()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28025], cast(void*)0, cast(void*)0);
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28026], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28029], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(Trigger.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Trigger.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28031], params.ptr, cast(void*)0);
		*Record = *cast(Trigger.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(Trigger.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Trigger.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28033], params.ptr, cast(void*)0);
		*Record = *cast(Trigger.CheckpointRecord*)params.ptr;
	}
}

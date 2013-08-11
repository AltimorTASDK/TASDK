module UnrealScript.Engine.DynamicBlockingVolume;

import ScriptClasses;
import UnrealScript.Engine.BlockingVolume;

extern(C++) interface DynamicBlockingVolume : BlockingVolume
{
	struct CheckpointRecord
	{
		public @property final bool bNeedsReplication() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x4) != 0; }
		public @property final bool bNeedsReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x4; } return val; }
		private ubyte __bNeedsReplication[4];
		public @property final bool bBlockActors() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bBlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bBlockActors[4];
		public @property final bool bCollideActors() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bCollideActors[4];
		public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
		private ubyte __Rotation[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Location[12];
	}
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14840], cast(void*)0, cast(void*)0);
	}
	final void CreateCheckpointRecord(DynamicBlockingVolume.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14841], params.ptr, cast(void*)0);
		*Record = *cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(DynamicBlockingVolume.CheckpointRecord* Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14843], params.ptr, cast(void*)0);
		*Record = *cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr;
	}
}

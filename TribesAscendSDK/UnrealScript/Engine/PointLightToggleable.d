module UnrealScript.Engine.PointLightToggleable;

import ScriptClasses;
import UnrealScript.Engine.PointLight;

extern(C++) interface PointLightToggleable : PointLight
{
	extern(D) struct CheckpointRecord
	{
		public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bEnabled[4];
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24664], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(PointLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PointLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24666], params.ptr, cast(void*)0);
		*Record = *cast(PointLightToggleable.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(PointLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PointLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24668], params.ptr, cast(void*)0);
		*Record = *cast(PointLightToggleable.CheckpointRecord*)params.ptr;
	}
}

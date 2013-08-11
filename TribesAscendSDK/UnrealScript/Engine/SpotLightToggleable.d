module UnrealScript.Engine.SpotLightToggleable;

import ScriptClasses;
import UnrealScript.Engine.SpotLight;

extern(C++) interface SpotLightToggleable : SpotLight
{
public extern(D):
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool bEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
final:
	bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27194], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CreateCheckpointRecord(SpotLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpotLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27196], params.ptr, cast(void*)0);
		*Record = *cast(SpotLightToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(SpotLightToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SpotLightToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27198], params.ptr, cast(void*)0);
		*Record = *cast(SpotLightToggleable.CheckpointRecord*)params.ptr;
	}
}

module UnrealScript.Engine.FogVolumeDensityInfo;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Info;

extern(C++) interface FogVolumeDensityInfo : Info
{
	struct CheckpointRecord
	{
		public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bEnabled[4];
	}
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15866], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15867], params.ptr, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15869], params.ptr, cast(void*)0);
	}
	final bool ShouldSaveForCheckpoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15871], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CreateCheckpointRecord(FogVolumeDensityInfo.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15873], params.ptr, cast(void*)0);
		*Record = *cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(FogVolumeDensityInfo.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15875], params.ptr, cast(void*)0);
		*Record = *cast(FogVolumeDensityInfo.CheckpointRecord*)params.ptr;
	}
}

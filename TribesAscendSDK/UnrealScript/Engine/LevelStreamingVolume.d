module UnrealScript.Engine.LevelStreamingVolume;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingVolume : Volume
{
	enum EStreamingVolumeUsage : ubyte
	{
		SVB_Loading = 0,
		SVB_LoadingAndVisibility = 1,
		SVB_VisibilityBlockingOnLoad = 2,
		SVB_BlockingOnLoad = 3,
		SVB_LoadingNotVisible = 4,
		SVB_MAX = 5,
	}
	struct CheckpointRecord
	{
		public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bDisabled[4];
	}
	public @property final auto ref ScriptArray!(LevelStreaming) StreamingLevels() { return *cast(ScriptArray!(LevelStreaming)*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float TestVolumeDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref LevelStreamingVolume.EStreamingVolumeUsage Usage() { return *cast(LevelStreamingVolume.EStreamingVolumeUsage*)(cast(size_t)cast(void*)this + 537); }
	public @property final auto ref LevelStreamingVolume.EStreamingVolumeUsage StreamingUsage() { return *cast(LevelStreamingVolume.EStreamingVolumeUsage*)(cast(size_t)cast(void*)this + 536); }
	public @property final bool bTestDistanceToVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
	public @property final bool bTestDistanceToVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
	public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
	public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
	public @property final bool bEditorPreVisOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool bEditorPreVisOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19395], params.ptr, cast(void*)0);
	}
	final void CreateCheckpointRecord(LevelStreamingVolume.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LevelStreamingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19397], params.ptr, cast(void*)0);
		*Record = *cast(LevelStreamingVolume.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(LevelStreamingVolume.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LevelStreamingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19399], params.ptr, cast(void*)0);
		*Record = *cast(LevelStreamingVolume.CheckpointRecord*)params.ptr;
	}
}

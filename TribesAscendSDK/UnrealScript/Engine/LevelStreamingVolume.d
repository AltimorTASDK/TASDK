module UnrealScript.Engine.LevelStreamingVolume;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingVolume : Volume
{
public extern(D):
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
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LevelStreaming) StreamingLevels() { return *cast(ScriptArray!(LevelStreaming)*)(cast(size_t)cast(void*)this + 520); }
			float TestVolumeDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			LevelStreamingVolume.EStreamingVolumeUsage Usage() { return *cast(LevelStreamingVolume.EStreamingVolumeUsage*)(cast(size_t)cast(void*)this + 537); }
			LevelStreamingVolume.EStreamingVolumeUsage StreamingUsage() { return *cast(LevelStreamingVolume.EStreamingVolumeUsage*)(cast(size_t)cast(void*)this + 536); }
		}
		bool bTestDistanceToVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bTestDistanceToVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bEditorPreVisOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bEditorPreVisOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19395], params.ptr, cast(void*)0);
	}
	void CreateCheckpointRecord(LevelStreamingVolume.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LevelStreamingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19397], params.ptr, cast(void*)0);
		*Record = *cast(LevelStreamingVolume.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(LevelStreamingVolume.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LevelStreamingVolume.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19399], params.ptr, cast(void*)0);
		*Record = *cast(LevelStreamingVolume.CheckpointRecord*)params.ptr;
	}
}

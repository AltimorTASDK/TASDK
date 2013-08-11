module UnrealScript.Engine.AmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.AmbientSoundSimple;

extern(C++) interface AmbientSoundSimpleToggleable : AmbientSoundSimple
{
public extern(D):
	struct CheckpointRecord
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool bCurrentlyPlaying() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bCurrentlyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float FadeOutVolumeLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float FadeOutDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float FadeInVolumeLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float FadeInDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
		}
		bool bIgnoreAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x4) != 0; }
		bool bIgnoreAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x4; } return val; }
		bool bFadeOnToggle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bFadeOnToggle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bCurrentlyPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bCurrentlyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10477], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10478], params.ptr, cast(void*)0);
	}
	void StartPlaying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10480], cast(void*)0, cast(void*)0);
	}
	void StopPlaying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10481], cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10482], params.ptr, cast(void*)0);
	}
	void CreateCheckpointRecord(AmbientSoundSimpleToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10484], params.ptr, cast(void*)0);
		*Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(AmbientSoundSimpleToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10486], params.ptr, cast(void*)0);
		*Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
}

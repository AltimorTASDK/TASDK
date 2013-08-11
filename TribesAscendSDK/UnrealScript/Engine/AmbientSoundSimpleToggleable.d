module UnrealScript.Engine.AmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.AmbientSoundSimple;

extern(C++) interface AmbientSoundSimpleToggleable : AmbientSoundSimple
{
	struct CheckpointRecord
	{
		public @property final bool bCurrentlyPlaying() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bCurrentlyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bCurrentlyPlaying[4];
	}
	public @property final auto ref float FadeOutVolumeLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float FadeOutDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float FadeInVolumeLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float FadeInDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final bool bIgnoreAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x4) != 0; }
	public @property final bool bIgnoreAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x4; } return val; }
	public @property final bool bFadeOnToggle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
	public @property final bool bFadeOnToggle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
	public @property final bool bCurrentlyPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
	public @property final bool bCurrentlyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10477], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10478], params.ptr, cast(void*)0);
	}
	final void StartPlaying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10480], cast(void*)0, cast(void*)0);
	}
	final void StopPlaying()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10481], cast(void*)0, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10482], params.ptr, cast(void*)0);
	}
	final void CreateCheckpointRecord(AmbientSoundSimpleToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10484], params.ptr, cast(void*)0);
		*Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(AmbientSoundSimpleToggleable.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10486], params.ptr, cast(void*)0);
		*Record = *cast(AmbientSoundSimpleToggleable.CheckpointRecord*)params.ptr;
	}
}
